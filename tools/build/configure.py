#!/usr/bin/env python3

from functools import lru_cache
import os
import shutil
from typing import List, Dict, Set, Union
from pathlib import Path
import subprocess
import sys
import ninja_syntax
from glob import glob

# Configuration:
VERSIONS = ["us"]
DO_SHA1_CHECK = True

# Paths:
ROOT = Path(__file__).parent.parent.parent
if ROOT.is_absolute():
    ROOT = ROOT.relative_to(Path.cwd())

TOOLS = Path("tools")
BUILD_TOOLS = Path("tools/build")
CRC_TOOL = f"{BUILD_TOOLS}/rom/n64crc"
VTXDIS_TOOL = f"{TOOLS}/vtxdis"

PIGMENT64 = "pigment64"
CRUNCH64 = "crunch64"

RUST_TOOLS = [
    (PIGMENT64, "pigment64", "0.4.2"),
    (CRUNCH64, "crunch64-cli", "0.3.1"),
]


def exec_shell(command: List[str]) -> str:
    ret = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    return ret.stdout


def write_ninja_rules(
    ninja: ninja_syntax.Writer,
    extra_cflags: str,
    use_ccache: bool,
    shift: bool,
    debug: bool,
):
    # platform-specific

    ccache = ""

    if use_ccache:
        ccache = "ccache "
        try:
            subprocess.call(["ccache"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except FileNotFoundError:
            ccache = ""

    cross = "mips-linux-gnu-"
    cc_ido_53 = f"{BUILD_TOOLS}/cc/ido/linux/5.3/cc"
    cc_ido_71 = f"{BUILD_TOOLS}/cc/ido/linux/7.1/cc"

    BFDNAME = "elf32-tradbigmips"

    warnings = f"-fullwarn -verbose -woff 624,649,838,712,516,513,596,564,594"

    CPPFLAGS_COMMON = (
        "-Iver/$version/include -Iver/$version/build/include "
        "-Iinclude -Isrc/libnaudio -Isrc -I. "
        "-Ilib/ultralib/include -Ilib/ultralib/include/PR -Ilib/ultralib/include/ido "
        "-Iassets/$version "
        "-D_LANGUAGE_C -D_FINALROM -DVERSION=$version -DF3DEX_GBI_2 -D_MIPS_SZLONG=32 "
        "-DBUILD_VERSION=VERSION_I_P -DNDEBUG -DN_MICRO"
        #"-Wall -Wextra -Wimplicit-fallthrough -Wno-unknown-pragmas -Wno-missing-braces -Wno-sign-compare -Wno-uninitialized -Wno-unused-label "
    )

    cflags = f"-G0 -non_shared -Xcpluscomm -nostdinc -Wab,-r4300_mul {extra_cflags} {warnings}"

    ninja.variable("python", sys.executable)
    # -T ver/$version/symbol_addrs_ld.txt
    ld_args = f"-T ver/$version/build/undefined_syms.txt -Map $mapfile --no-check-sections -T $in -o $out"
    ld = f"{cross}ld" if not "POKESTADIUM_LD" in os.environ else os.environ["POKESTADIUM_LD"]

    ninja.rule(
        "ld",
        description="link($version) $out",
        command=f"{ld} {ld_args}",
    )

    Z64_DEBUG = ""
    if debug:
        Z64_DEBUG = " -gS -R .data -R .note -R .eh_frame -R .gnu.attributes -R .comment -R .options"
    ninja.rule(
        "z64",
        description="rom $out",
        command=f"{cross}objcopy $in $out -O binary{Z64_DEBUG} && {BUILD_TOOLS}/rom/n64crc $out",
    )

    ninja.rule(
        "sha1sum",
        description="check $in",
        command="sha1sum -c $in && touch $out" if DO_SHA1_CHECK else "touch $out",
    )

    ninja.rule("cpp", description="cpp $in", command=f"cpp $in {extra_cppflags} -P -o $out")

    ninja.rule(
        "cc_ido_53",
        description="ido $in",
        command=f"{ccache}{cc_ido_53} {cflags} -w {CPPFLAGS_COMMON} -c -mips1 -O0 -G0 -non_shared -Xfullwarn -Xcpluscomm -o $out $in",
    )

    ninja.rule(
        "cc_ido_71",
        description="ido $in",
        command=f"{ccache}{cc_ido_71} {cflags} -w {CPPFLAGS_COMMON} -c -mips2 -O2 -G0 -non_shared -Xfullwarn -Xcpluscomm -o $out $in",
    )

    ninja.rule(
        "bin",
        description="bin $in",
        command=f"{cross}objcopy -I binary -O {BFDNAME} --set-section-alignment .data=8 $in $out",
    )

    ninja.rule(
        "cp",
        description="cp $in $out",
        command=f"cp $in $out",
    )

    ninja.rule(
        "as",
        description="as $out $in",
        command=f"{cross}as -32 -G0 -march=vr4300 -Iinclude -o $out $in",
    )

    ninja.rule(
        "yay0",
        description="yay0 $in",
        command=f"crunch64 compress yay0 $in $out",
    )


def write_ninja_for_tools(ninja: ninja_syntax.Writer):
    ninja.rule(
        "cc_tool",
        description="cc_tool $in",
        command=f"cc -w $in -O3 -o $out",
    )

    ninja.build(CRC_TOOL, "cc_tool", f"{BUILD_TOOLS}/rom/n64crc.c")
    ninja.build(VTXDIS_TOOL, "cc_tool", f"{TOOLS}/vtxdis.c")


def does_iconv_work() -> bool:
    # run iconv and see if it works
    stdin = "エリア ＯＭＯ２＿１".encode("utf-8")

    def run(command, stdin):
        sub = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, input=stdin, cwd=ROOT)
        return sub.stdout

    expected_stdout = run(["tools/build/iconv.py", "UTF-8", "euc-jp"], stdin)
    actual_stdout = run(["iconv", "--from", "UTF-8", "--to", "euc-jp"], stdin)
    return expected_stdout == actual_stdout


use_python_iconv = not does_iconv_work()
if use_python_iconv:
    print("warning: iconv doesn't work, using python implementation")


class Configure:
    def __init__(self, version: str):
        self.version = version
        self.version_path = ROOT / f"ver/{version}"
        self.linker_entries = None

    def split(self, assets: bool, code: bool, shift: bool, debug: bool):
        import splat.scripts.split as split

        modes = ["ld"]
        if assets:
            modes.extend(
                [
                    "bin",
                    "rodatabin",
                    "textbin",
                    "yay0",
                    "img",
                    "vtx",
                    "vtx_common",
                    "gfx",
                    "gfx_common",
                ]
            )
        if code:
            modes.extend(["code", "c", "data", "rodata"])

        splat_files = [str(self.version_path / "splat.yaml")]
        if debug:
            splat_files += [str(self.version_path / "splat-debug.yaml")]

        if shift:
            splat_files += [str(self.version_path / "splat-shift.yaml")]

        split.main(
            splat_files,
            modes,
            verbose=False,
        )
        self.linker_entries = split.linker_writer.entries
        self.asset_stack: List[str] = split.config["asset_stack"]

    def build_path(self) -> Path:
        return Path(f"ver/{self.version}/build")

    def undefined_syms_path(self) -> Path:
        return self.build_path() / "undefined_syms.txt"

    def elf_path(self) -> Path:
        # TODO: read basename and build_path from splat.yaml
        return Path(f"ver/{self.version}/build/pokestadium.elf")

    def rom_path(self) -> Path:
        return self.elf_path().with_suffix(".z64")

    def rom_ok_path(self) -> Path:
        return self.elf_path().with_suffix(".ok")

    def linker_script_path(self) -> Path:
        # TODO: read from splat.yaml
        return Path(f"ver/{self.version}/pokestadium.ld")

    def map_path(self) -> Path:
        return self.elf_path().with_suffix(".map")

    def resolve_src_paths(self, src_paths: List[Path]) -> List[str]:
        out = []

        for path in src_paths:
            path = self.resolve_asset_path(path)

            if path is not None:
                if path.is_dir():
                    out.extend(glob(str(path) + "/**/*", recursive=True))
                else:
                    out.append(str(path))

        return out

    # Given a directory relative to assets/, return a list of all assets in the directory
    # for all layers of the asset stack
    def get_asset_list(self, asset_dir: str) -> List[str]:
        ret: Dict[Path, Path] = {}

        for stack_dir in self.asset_stack:
            path_stem = f"assets/{stack_dir}/{asset_dir}"

            for p in Path(path_stem).glob("**/*"):
                glob_part = p.relative_to(path_stem)
                if glob_part not in ret:
                    ret[glob_part] = p

        return [str(v) for v in ret.values()]

    @lru_cache(maxsize=None)
    def resolve_asset_path(self, path: Path) -> Path:
        # Remove nonsense
        path = Path(os.path.normpath(path))

        parts = list(path.parts)

        if parts[0] != "assets":
            return path

        for asset_dir in self.asset_stack:
            parts[1] = asset_dir
            new_path = Path("/".join(parts))
            if new_path.exists():
                return new_path

        return path

    def write_ninja(
        self,
        ninja: ninja_syntax.Writer,
        skip_outputs: Set[str],
        non_matching: bool
    ):
        assert self.linker_entries is not None

        built_objects = set()
        generated_code = []
        inc_img_bins = []

        def build(
            object_paths: Union[Path, List[Path]],
            src_paths: List[Path],
            task: str,
            variables: Dict[str, str] = {},
            implicit_outputs: List[str] = [],
            asset_deps: List[str] = [],
        ):
            if not isinstance(object_paths, list):
                object_paths = [object_paths]

            object_strs = [str(obj) for obj in object_paths]
            needs_build = False

            for object_path in object_paths:
                if object_path.suffixes[-1] == ".o":
                    built_objects.add(str(object_path))
                elif object_path.suffix.endswith(".h") or object_path.suffix.endswith(".c"):
                    generated_code.append(str(object_path))

                # don't rebuild objects if we've already seen all of them
                if not str(object_path) in skip_outputs:
                    needs_build = True

            for i_output in implicit_outputs:
                if i_output.endswith(".h"):
                    generated_code.append(i_output)

            if needs_build:
                skip_outputs.update(object_strs)

                implicit = []
                order_only = []

                inputs = self.resolve_src_paths(src_paths)
                for dir in asset_deps:
                    inputs.extend(self.get_asset_list(dir))
                ninja.build(
                    outputs=object_strs,  # $out
                    rule=task,
                    inputs=inputs,  # $in
                    implicit=implicit,
                    order_only=order_only,
                    variables={"version": self.version, **variables},
                    implicit_outputs=implicit_outputs,
                )

        import splat
        
        # Build libs

        libs = [
            ["libultra", "lib/ultralib", f"ver/{version}/build/lib/libultra.a"]
        ]
        for lib_name, lib_path, lib_out_path in libs:
            if not Path(lib_out_path).exists():
                print(f"Building library {lib_name}")
                exec_shell(["make", "-C", str(ROOT / lib_path), 
                           f"VERSION=I_P", "TARGET=libultra_rom", 
                           "FIXUPS=1", "CROSS=mips-linux-gnu-", 
                           f"CC=../../{BUILD_TOOLS}/cc/ido/linux/5.3/cc", 
                           "VERBOSE=0", "COLOR=1"])
            build([Path(lib_out_path)],
                  [f"lib/ultralib/build/I_P/libultra_rom/libultra_rom.a"],
                  "cp")

        # Build objects
        for entry in self.linker_entries:
            seg = entry.segment

            if seg.type == "linker" or seg.type == "linker_offset":
                continue

            assert entry.object_path is not None

            if isinstance(seg, splat.segtypes.n64.header.N64SegHeader):
                build(entry.object_path, entry.src_paths, "as")
            elif isinstance(seg, splat.segtypes.common.hasm.CommonSegHasm):
                build(entry.object_path, entry.src_paths, "as")
            elif isinstance(seg, splat.segtypes.common.asm.CommonSegAsm) or (
                isinstance(seg, splat.segtypes.common.data.CommonSegData)
                and not seg.type[0] == "."
                or isinstance(seg, splat.segtypes.common.textbin.CommonSegTextbin)
            ):
                build(entry.object_path, entry.src_paths, "as")
            elif isinstance(seg, splat.segtypes.common.c.CommonSegC) or (
                isinstance(seg, splat.segtypes.common.data.CommonSegData) and seg.type[0] == "."
            ):
                cflags = None
                if isinstance(seg.yaml, dict):
                    if "cflags" in seg.yaml:
                        cflags = seg.yaml.get("cflags")
                    if "extra_flags" in seg.yaml:
                        cflags += seg.yaml.get("extra_flags")
                elif len(seg.yaml) >= 4:
                    cflags = seg.yaml[3]

                # default cflags where not specified
                if cflags is None:
                    cflags = ""
                    pass

                # c
                task = "cc_ido_71"

                # special cases for old IDO
                if "libleo" in seg.name:
                    task = "cc_ido_53"

                encoding = "euc-jp"

                if use_python_iconv:
                    iconv = f"tools/build/iconv.py UTF-8 {encoding}"
                else:
                    iconv = f"iconv --from UTF-8 --to {encoding}"

                build(
                    entry.object_path,
                    entry.src_paths,
                    task,
                    variables={
                        "cflags": cflags,
                        "cppflags": "",
                        "iconv": iconv,
                    },
                )

                # images embedded inside data aren't linked, but they do need to be built into .bin files
                if isinstance(seg, splat.segtypes.common.group.CommonSegGroup):
                    for seg in seg.subsegments:
                        if isinstance(seg, splat.segtypes.n64.img.N64SegImg):
                            flags = ""
                            if seg.n64img.flip_h:
                                flags += "--flip-x "
                            if seg.n64img.flip_v:
                                flags += "--flip-y "

                            src_paths = [seg.out_path().relative_to(ROOT)]
                            inc_dir = self.build_path() / "include" / seg.dir
                            bin_path = self.build_path() / seg.dir / (seg.name + ".png.bin")

                            build(
                                bin_path,
                                src_paths,
                                "pigment",
                                variables={
                                    "img_type": seg.type,
                                    "img_flags": flags,
                                },
                            )

                            assert seg.vram_start is not None, "img with vram_start unset: " + seg.name

                            c_sym = seg.create_symbol(
                                addr=seg.vram_start,
                                in_segment=True,
                                type="data",
                                define=True,
                            )
                            name = c_sym.name
                            if "namespaced" in seg.args:
                                name = f"N({name[7:]})"
                            vars = {"c_name": name}
                            build(
                                inc_dir / (seg.name + ".png.h"),
                                src_paths,
                                "img_header",
                                vars,
                            )
                        elif isinstance(seg, splat.segtypes.n64.palette.N64SegPalette):
                            src_paths = [seg.out_path().relative_to(ROOT)]
                            inc_dir = self.build_path() / "include" / seg.dir
                            bin_path = self.build_path() / seg.dir / (seg.name + ".pal.bin")

                            build(
                                bin_path,
                                src_paths,
                                "pigment",
                                variables={
                                    "img_type": seg.type,
                                    "img_flags": "",
                                },
                            )

                            assert seg.vram_start is not None
                            c_sym = seg.create_symbol(
                                addr=seg.vram_start,
                                in_segment=True,
                                type="data",
                                define=True,
                            )
            elif isinstance(seg, splat.segtypes.common.bin.CommonSegBin):
                build(entry.object_path, entry.src_paths, "bin")
            elif isinstance(seg, splat.segtypes.n64.yay0.N64SegYay0):
                compressed_path = entry.object_path.with_suffix("")  # remove .o
                build(compressed_path, entry.src_paths, "yay0")
                build(entry.object_path, [compressed_path], "bin")
            elif isinstance(seg, splat.segtypes.n64.img.N64SegImg):
                flags = ""
                if seg.n64img.flip_h:
                    flags += "--flip-x "
                if seg.n64img.flip_v:
                    flags += "--flip-y "

                bin_path = entry.object_path.with_suffix(".bin")
                inc_dir = self.build_path() / "include" / seg.dir

                build(
                    bin_path,
                    entry.src_paths,
                    "pigment",
                    variables={
                        "img_type": seg.type,
                        "img_flags": flags,
                    },
                )
                build(entry.object_path, [bin_path], "bin")

                # c_sym = seg.create_symbol(
                #     addr=seg.vram_start, in_segment=True, type="data", define=True
                # )
                # vars = {"c_name": c_sym.name}
                build(inc_dir / (seg.name + ".png.h"), entry.src_paths, "img_header")
            elif isinstance(seg, splat.segtypes.n64.palette.N64SegPalette):
                bin_path = entry.object_path.with_suffix(".bin")

                build(
                    bin_path,
                    entry.src_paths,
                    "pigment",
                    variables={
                        "img_type": seg.type,
                        "img_flags": "",
                    },
                )
                build(entry.object_path, [bin_path], "bin")
            elif isinstance(seg, splat.segtypes.common.lib.CommonSegLib) and seg.name == "libultra":
                pass;
                # build(
                #     entry.object_path,
                #     [f"ver/{version}/build/lib/libultra.a"],
                #     "bin",
                # )

            else:
                raise Exception(f"don't know how to build {seg.__class__.__name__} '{seg.name}'")

        # Run undefined_syms through cpp
        ninja.build(
            str(self.undefined_syms_path()),
            "cpp",
            str(self.version_path / "undefined_syms.txt"),
        )

        # Build elf, z64, ok
        additional_objects = [str(self.build_path() / f"lib/libultra.a"), str(self.undefined_syms_path())]

        ninja.build(
            str(self.elf_path()),
            "ld",
            str(self.linker_script_path()),
            implicit=[str(obj) for obj in built_objects] + additional_objects,
            variables={"version": self.version, "mapfile": str(self.map_path())},
        )

        ninja.build(
            str(self.rom_path()),
            "z64",
            str(self.elf_path()),
            implicit=[CRC_TOOL, VTXDIS_TOOL],
            variables={"version": self.version},
        )

        if not non_matching:
            ninja.build(
                str(self.rom_ok_path()),
                "sha1sum",
                f"ver/{self.version}/checksum.sha1",
                implicit=[str(self.rom_path())],
            )

        ninja.build("generated_code_" + self.version, "phony", generated_code)

    def make_current(self, ninja: ninja_syntax.Writer):
        current = Path("ver/current")

        try:
            current.unlink()
        except Exception:
            pass

        current.symlink_to(self.version)

        ninja.build("ver/current/build/pokestadium.z64", "phony", str(self.rom_path()))


if __name__ == "__main__":
    from argparse import ArgumentParser

    parser = ArgumentParser(description="Pokemon Stadium build.ninja generator")
    parser.add_argument(
        "version",
        nargs="*",
        default=[],
        choices=[*VERSIONS, []],
        help="Version(s) to configure for. Most tools will operate on the first-provided only. Supported versions: "
        + ",".join(VERSIONS),
    )
    parser.add_argument(
        "-c",
        "--clean",
        action="store_true",
        help="Delete assets and previously-built files",
    )
    parser.add_argument("--splat", default="tools/splat", help="Path to splat tool to use")
    parser.add_argument("--no-split-code", action="store_true", help="Re-split code segments to asm files")
    parser.add_argument(
        "--no-split-assets",
        action="store_true",
        help="Don't split assets from the baserom(s)",
    )
    parser.add_argument("-d", "--debug", action="store_true", help="Generate debugging information")
    parser.add_argument(
        "-n",
        "--non-matching",
        action="store_true",
        help="Compile nonmatching code. Combine with --debug for more detailed debug info",
    )
    parser.add_argument(
        "--shift",
        action="store_true",
        help="Build a shiftable version of the game (non-matching)",
    )
    parser.add_argument("--ccache", action="store_true", help="Use ccache")
    args = parser.parse_args()

    exec_shell(["make", "-C", str(ROOT / args.splat)])

    version_err_msg = ""
    missing_tools = []
    version_old_tools = []
    for tool, crate_name, req_version in RUST_TOOLS:
        try:
            version = exec_shell([tool, "--version"]).split(" ")[1].strip()

            if version < req_version:
                version_err_msg += (
                    f"error: {tool} version {req_version} or newer is required, system version is {version}"
                )
                version_old_tools.append(crate_name)
        except (FileNotFoundError, PermissionError):
            missing_tools.append(crate_name)

    if version_old_tools or missing_tools:
        if version_err_msg:
            print(version_err_msg)
        if missing_tools:
            print(f"error: cannot find required Rust tool(s): {', '.join(missing_tools)}")
        print()
        print("To install/update dependencies, obtain cargo:\n\tcurl https://sh.rustup.rs -sSf | sh")
        print(f"and then run:")
        for tool in missing_tools:
            print(f"\tcargo install {tool}")
        for tool in version_old_tools:
            print(f"\tcargo install {tool}")
        print()
        print(f"Be sure cargo is added to your PATH!")
        exit(1)

    # default version behaviour is to only do those that exist
    if len(args.version) > 0:
        versions = args.version
    else:
        versions = []

        for version in VERSIONS:
            rom = ROOT / f"ver/{version}/baserom.z64"

            print(f"configure: looking for baserom {rom.relative_to(ROOT)}", end="")

            if rom.exists():
                print("...found")
                versions.append(version)
            else:
                print("...missing")

        if len(versions) == 0:
            print("error: no baseroms found")
            exit(1)

    if args.clean:
        print("configure: cleaning...")

        exec_shell(["ninja", "-t", "clean"])

        for version in versions:
            shutil.rmtree(ROOT / f"assets/{version}", ignore_errors=True)
            shutil.rmtree(ROOT / f"ver/{version}/assets", ignore_errors=True)
            shutil.rmtree(ROOT / f"ver/{version}/build", ignore_errors=True)
            try:
                os.remove(ROOT / f"ver/{version}/.splat_cache")
            except OSError:
                pass

    extra_cflags = ""
    extra_cppflags = ""
    if args.non_matching:
        extra_cppflags += " -DNON_MATCHING"

        if args.debug:
            extra_cflags += " -ggdb3"  # we can generate more accurate debug info in non-matching mode
            extra_cppflags += " -DDEBUG"  # e.g. affects ASSERT macro
    elif args.debug:
        # g1 doesn't affect codegen
        extra_cflags += " -ggdb3"

    if args.shift:
        extra_cppflags += " -DSHIFT"

    # add splat to python import path
    sys.path.insert(0, str((ROOT / args.splat / "src").resolve()))

    ninja = ninja_syntax.Writer(open(str(ROOT / "build.ninja"), "w"), width=9999)

    non_matching = args.non_matching or args.shift

    write_ninja_rules(
        ninja,
        extra_cflags,
        args.ccache,
        args.shift,
        args.debug,
    )
    write_ninja_for_tools(ninja)

    skip_files: Set[str] = set()
    all_rom_oks: List[str] = []
    first_configure = None

    for version in versions:
        print(f"configure: configuring version {version}")

        configure = Configure(version)

        if not first_configure:
            first_configure = configure

        # include tools/splat_ext in the python path
        sys.path.append(str((ROOT / "tools/splat_ext").resolve()))

        print(args)

        configure.split(not args.no_split_assets, not args.no_split_code, args.shift, args.debug)
        configure.write_ninja(ninja, skip_files, non_matching)

        all_rom_oks.append(str(configure.rom_ok_path()))

    assert first_configure, "no versions configured"
    first_configure.make_current(ninja)

    if non_matching:
        ninja.build("all", "phony", [str(first_configure.rom_path())])
    else:
        ninja.build("all", "phony", all_rom_oks)
    ninja.default("all")

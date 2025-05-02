#!/usr/bin/env python3

def apply(config, args):
    config['baseimg'] = 'ver/current/baserom.z64'
    config['myimg'] = 'ver/us/build/pokestadium.z64'
    config['mapfile'] = 'ver/us/build/pokestadium.map'
    config['source_directories'] = ['.']
    config["make_command"] = ["ninja"]
    config["objdump_flags"] = ["-M", "reg-names=32"]
    config["expected_dir"] = f"expected/ver/us/"

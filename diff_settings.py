#!/usr/bin/env python3

def apply(config, args):
    config['baseimg'] = 'baserom.z64'
    config['myimg'] = 'build/pokestadium.z64'
    config['mapfile'] = 'build/pokestadium.map'
    config['source_directories'] = ['./src','./include']
    config['objdump_flags'] = ['-d', '-r', '-z', '-Mreg-names=32']
    config['makeflags'] = ['KEEP_MDEBUG=1']

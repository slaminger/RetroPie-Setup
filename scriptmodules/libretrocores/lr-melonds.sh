#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-melonds"
rp_module_desc="Nintendo DS emulator - melonds Port for libretro"
rp_module_help="ROM Extensions: .nds .zip\n\nCopy your NDS roms to $romdir/nds"
rp_module_licence="GPL2"
rp_module_section="exp"

function sources_lr-melonds() {
    gitPullOrClone "$md_build" https://github.com/libretro/libretro/melonDS.git
}

function build_lr-melonds() {
    make clean
	#cmake .. #might need to use this
    make
    md_ret_require="$md_build/melonds_libretro.so"
}

function install_lr-melonds() {
    md_ret_files=(
        'melonds_libretro.so'
    )
}

function configure_lr-melonds() {
    mkRomDir "nds"
    ensureSystemretroconfig "nds"

    local def=0
    isPlatform "armv6" && def=1

    addEmulator "$def" "$md_id" "nds" "$md_inst/melonds_libretro.so"
    addSystem "nds"
}
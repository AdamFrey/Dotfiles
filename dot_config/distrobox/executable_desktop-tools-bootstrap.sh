#!/usr/bin/env bash

source $(dirname "$0")/shared.sh

install_arch_basics

local_install openssh
local_install kitty-terminfo
local_install direnv
local_install dunst
local_install fzf
local_install zoxide

export_install restic
export_install xorg-xset xset
export_install feh
export_install tldr


yay_i ttf-icomoon-feather-git

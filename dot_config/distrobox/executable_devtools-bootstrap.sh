#!/usr/bin/env bash

source $(dirname "$0")/shared.sh

#sudo pacman -Syyu
install_arch_basics


local_install direnv
local_install fasd
local_install fzf
local_install git
local_install jdk17-openjdk
local_install kitty-terminfo
local_install openssh
local_install podman
local_install rlwrap
local_install tldr

local_install unzip


export_install chezmoi
export_install clojure
export_install clojure clj
export_install leiningen lein
export_install npm
export_install packer
export_install postgresql psql
export_install shellcheck
export_install_yay babashka-bin bb
export_install_yay circleci-cli-bin circleci
export_install_yay cljfmt-bin cljfmt
export_install_yay clj-kondo-bin clj-kondo
export_install terraform

yay_i google-cloud-cli gcloud
distrobox-export --bin /opt/google-cloud-cli/bin/gcloud --export-path ~/.local/bin
distrobox-export --bin /opt/google-cloud-cli/bin/gsutil --export-path ~/.local/bin



# handled on fedora
#export_install emacs
#export_install emacs emacsclient
export_install httpie http
export_install ripgrep rg
# For the moment installing from source
# export_install zig zig
# export_install_yay zls-git zls

if [ ! -f ~/.config/gcloud/application_default_credentials.json ]
then
    gcloud auth application-default login
fi

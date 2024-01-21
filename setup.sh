#!/bin/bash
#
set -x

mkdir -p ~/.config

ln -sf config/nvim ~/.config/nvim

apt-get -y install neovim


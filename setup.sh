#!/bin/bash
#
set -x

mkdir -p ~/.config

ln -sf ${PWD}/config/nvim ~/.config/nvim

sudo apt-get -y install neovim


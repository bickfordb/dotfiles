#!/bin/bash
#
set -eux

mkdir -p ~/.config
export DEBIAN_FRONTEND=noninteractive
ln -sf ${PWD}/config/nvim ~/.config/nvim

sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get -y install neovim

sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#nvim +PlugInstall +qall

nvim --PlugInstall --qall

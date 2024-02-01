#!/bin/bash
#
set -eux

bash install-neovim.sh

mkdir -p ~/.config
ln -sf ${PWD}/config/nvim ~/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim -u ~/.config/nvim/plugins.vim --headless +PlugUpdate +PlugInstall +qall
cat >>~/.profile - <<EOF

alias vi=nvim
alias vim=nvim
EOF

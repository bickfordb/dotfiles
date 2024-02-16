#!/bin/bash
#
set -eux

bash install-neovim.sh
apt-get -y install python3-venv
mkdir -p ~/.config
ln -sf ${PWD}/config/nvim ~/.config/nvim

#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#nvim -u ~/.config/nvim/plugins.vim --headless +PlugUpdate +PlugInstall +qall
cat >>~/.profile - <<EOF

alias vi=nvim
alias vim=nvim
EOF

pip3 install codespell install python-lsp-server

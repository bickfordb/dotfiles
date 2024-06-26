#!/bin/bash
#
set -eux

chsh "$(id -un)" --shell "/usr/bin/zsh"
bash install-neovim.sh
apt-get -y install python3-venv shellcheck yamllint
mkdir -p ~/.config
ln -sf "${PWD}"/config/nvim ~/.config/nvim

#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#nvim -u ~/.config/nvim/plugins.vim --headless +PlugUpdate +PlugInstall +qall

pip3 install codespell install python-lsp-server

if [ ! -L ~/.zsh.d ]; then
  ln -sf "${PWD}"/.zsh.d ~/.zsh.d
fi


dotfiles_dir=${PWD}
cat >>~/.zprofile - <<EOF
if [ -f "${dotfiles_dir}/.zprofile" ]; then
  . "${dotfiles_dir}/.zprofile"
fi
EOF

npm install jsonlint -g
go install github.com/mrtazz/checkmake/cmd/checkmake@latest

git config push.autoSetupRemote true


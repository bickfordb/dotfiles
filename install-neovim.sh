#!/usr/bin/env bash
set -eux
export DEBIAN_FRONTEND=noninteractive


#Build and install neovim for Debian
#See: https://neovim.io/
#See: https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start

#See: https://gist.github.com/darcyparker/153124662b05c679c417

#Save current dir
pushd . > /dev/null || exit


curl -fsSL https://deb.nodesource.com/setup_21.x | bash -
#Install dependencies
apt-get update
apt-get install -y \
  autoconf \
  automake \
  cmake \
  g++ \
  gettext \
  nodejs \
  libncurses5-dev \
  libtool \
  libtool-bin \
  libunibilium-dev \
  libunibilium4 \
  ninja-build \
  pkg-config \
  python3-pip \
  software-properties-common \
  unzip

# Enable use of python plugins
# Note: python neovim module was renamed to pynvim
# https://github.com/neovim/neovim/wiki/Following-HEAD#steps-to-update-pynvim-formerly-neovim-python-package
# pip uninstall pynvim neovim
# pip3 uninstall pynvim neovim
#pip install setuptools
#pip install --upgrade pynvim
pip3 install setuptools
pip3 install --upgrade pynvim

#gem install neovim
npm install -g neovim

#Get or update neovim github repo
mkdir -p ~/src
cd ~/src || exit
if [ ! -e ~/src/neovim ]; then
  git clone https://github.com/neovim/neovim
else
  cd neovim || exit
  git pull origin
fi

cd ~/src/neovim || exit
git checkout master

#Remove old build dir and .deps dir
rm -rf build/
rm -rf .deps/
make distclean

# Build and install neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/usr/local/"
make install

# Enable use of ruby plugins
# sudo gem install neovim

#Restore dir
popd > /dev/null || exit

echo "nvim command: $(command -v nvim)"
echo "nvim command: $(ls -al "$(command -v nvim)")"

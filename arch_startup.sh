#! /bin/bash

# Simple bootstrap for arch linux

set -x

# Initial system upgrade
sudo pacman -Syu

#########
## Vim ##
#########
sudo pacman -S vim

# Awesome-Vim package bundle
# Note: makes pathogen (vim package manager) directory use ~/.vim_runtime/sources_non_forked instead of ~/.vim/bundle
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#########################################
## NVM (node version manager) and Node ##
#########################################
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts

###################################
## Ethereum development packages ##
###################################
# Vim plugin
git clone https://github.com/tomlion/vim-solidity.git ~/.vim_runtime/sources_non_forked/vim-solidity

# Ethereum in-mem blockchain and solidity compiler
npm install -g ganache-cli
npm install -g solc

# Print instructions for installing latest aurman
echo "Get aurman via:
cd ~/Downloads
git clone https://aur.archlinux.org/aurman.git
cd aurman
makepkg -Acs
# Change xxx below to downloaded version
sudo pacman -U aurman-xxx.pkg.tar.xz"


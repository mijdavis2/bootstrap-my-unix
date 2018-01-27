#! /bin/bash

# Simple bootstrap for arch linux

set -x

# Initial system upgrade
sudo pacman -Syu

#########
## Vim ##
#########
sudo pacman -S vim

# Awesome-Vim Plugins #
# Note: makes pathogen (vim package manager) directory use ~/.vim_runtime/sources_non_forked
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Ethereum vim plugin
git clone https://github.com/tomlion/vim-solidity.git ~/.vim_runtime/sources_non_forked/vim-solidity

#########################################
## NVM (node version manager) and Node ##
#########################################
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
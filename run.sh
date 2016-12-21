#!/usr/bin/env bash

# Add repositories and install Essentials
sudo add-apt-repository -y ppa:webupd8team/java
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get upgrade -yq
sudo apt-get install -y build-essentials git vim curl yarn

# Install Java8
sudo apt-get install -y python-software-properties debconf-utils
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

# Install Nodejs and globals
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g gulp firebase-tools aureali-cli

# Install Python3
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python3-venv

# Install zsh and plugins
sudo apt-get install -y zsh
sudo apt-get install -y git-core
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in ~/.zprezto/runcoms/^README.md; do
  ln -f -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
cp dotfiles/.gitconfig ~/.gitconfig
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/.zpreztorc ~/.preztorc
cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.zprofile ~/.zprofile
cp zprezto-themes/prompt_garrett_setup ~/.zprezto/modules/prompt/functions/prompt_garrett_setup
source ~/.zshrc

echo "------------------"
echo "DEV SETUP COMPLETE"
echo "If using something like guake, make sure to update the terminal emulator profile's shell to $(which zsh)"
echo "Now get coding!"

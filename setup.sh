#! /bin/bash

cat dotfiles/.vimrc >> ~/.vimrc
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cat dotfiles/.bashrc >> ~/.bashrc
cat dotfiles/.gitconfig > ~/.gitconfig

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -yq python3.5

wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py

sudo apt-get install curl
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
source ~/.venvburrito/startup.sh


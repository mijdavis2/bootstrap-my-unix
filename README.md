# Bootstrap My Unix

Because I often start from scratch and play with new distros, 
here are some helpful configs and resources for setting up 
a development environment.

### TODO:

- Add install script to do all the following: 
    - git-bash-prompt install
    - dotfile installs
    
- Add extra support:
    - JAVA_HOME template and link to java jdk download page
    - intellij download link and maybe an install script that fetches a license.

- Support more operating systems:
    - MacOS
    - CentoS

# Instructions

```bash
# !bash
# FROM bootstrap-my-unix root directory do:

sudo apt-get update
sudo apt-get install git
sudo apt-get install vim
cat dotfiles/.vimrc >> ~/.vimrc
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cat dotfiles/.bashrc >> ~/.bashrc

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python3.5

wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py

sudo apt-get install curl
curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
source /home/doobiedob/.venvburrito/startup.sh
```

- Java SE (JDK) - http://www.oracle.com/technetwork/java/javase/overview/index.html
    - tar xfz that archive. 
    - ```mv``` the extract to /usr/lib.
    - ```export JAVA_HOME="/usr/lib/jkd#.#.#_###" ``` in bashrc/env AND in /etc/environment

- Intellij - https://download.jetbrains.com/idea/ideaIU-15.0.5.tar.gz
    - get license key logging in here: https://account.jetbrains.com/licenses/assets

```bash
#!bash
tar xfz ideaIU-15.0.5.tar.gz
sudo mv idea-IU-143.2332.3 /usr/lib
/usr/lib/idea-IU-143.2332.3/bin/idea.sh
```

## License

MIT © [mijdavis2](http://mdavisinsc.com)
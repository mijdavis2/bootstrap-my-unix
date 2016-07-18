# Bootstrap My Unix

A collection of configs and resources for setting up a development environment.

# Instructions
```bash
# !bash
# FROM bootstrap-my-unix root directory do:

sudo apt-get update
sudo apt-get install git
sudo apt-get install vim
. ./setup.sh

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install nodejs

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

**Python2.7.11**

```
sudo apt-get install -y \
autotools-dev      \
blt-dev            \
bzip2              \
dpkg-dev           \
g++-multilib       \
gcc-multilib       \
libbluetooth-dev   \
libbz2-dev         \
libexpat1-dev      \
libffi-dev         \
libffi6            \
libffi6-dbg        \
libgdbm-dev        \
libgpm2            \
libncursesw5-dev   \
libreadline-dev    \
libsqlite3-dev     \
libssl-dev         \
libtinfo-dev       \
mime-support       \
net-tools          \
netbase            \
python-crypto      \
python-mox3        \
python-pil         \
python-ply         \
quilt              \
tk-dev             \
zlib1g-dev

wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
tar xfz Python-2.7.11.tgz
cd Python-2.7.11/
./configure --prefix /usr/local/lib/python2.7.11 --enable-ipv6
make
sudo make install

sudo ln -s /usr/local/lib/python2.7.11/bin/python /usr/bin/python2.7.11
```

### TODO:

- [x] Add install script to do all the following: 
    - git-bash-prompt install
    - dotfile installs
- [ ] Add extra support:
    - JAVA_HOME template and link to java jdk download page
    - intellij download link and maybe an install script that fetches a license.
- [ ] Support more operating systems:
    - MacOS
    - CentoS

## License

MIT © [mijdavis2](http://mdavisinsc.com)

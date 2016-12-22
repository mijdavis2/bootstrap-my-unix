# Bootstrap My Unix

**_Setup a new dev compy in no time!_** 

This setup includes installation of: 
  - common apt packages
  - java8
  - python3
  - nodejs6
  - go
  - zsh
  - zprezto
  - customized configs for git, vim, etc.
  
**Caveats**: Currently only supports debian/ubuntu based compies. _OSX support soon to come!_

# Instructions

### Run pre-requisites
- Creates rsa key for github
- Follow instructions on completion

```bash
sudo apt-get update
sudo apt-get install -y wget curl
wget https://raw.githubusercontent.com/mijdavis2/bootstrap-my-unix/master/pre-run.sh | bash
```

### Clone the repo and run
- Note that you will be prompted for your password

```bash
git clone git@github.com:mijdavis2/bootstrap-my-unix.git
cd bootstrap-my-unix
chmod +x run.sh
./run.sh
```

## Intellij

Get license key logging in here: https://account.jetbrains.com/licenses/assets

Additional downloads here: https://confluence.jetbrains.com/display/IntelliJIDEA/Previous+IntelliJ+IDEA+Releases
    - 
```bash
tar xfz ideaIU-VERSION.tar.gz
sudo mv idea-IU-VERSION /usr/lib
/usr/lib/idea-IU-VERSION/bin/idea.sh
```

### Optional

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
- [x] Add extra support:
    - JAVA_HOME template and link to java jdk download page
    (_NOW BUILTIN TO SCRIPT_)
- [ ] Support more operating systems:
    - MacOS
    - CentoS

## License

MIT © [mijdavis2](http://mdavis.io)

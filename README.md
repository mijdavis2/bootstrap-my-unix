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

**Caveats**: Currently only supports debian/ubuntu and arch.

## Tips and tricks

### Python

One should usually use tox or a virtualenv for projects, but sometimes you just want to use python from the cli or across projects. This can be annoying when pip installing or changing python versions.

To never pip install to system and instead use local user packages:

- use [pyenv](https://github.com/pyenv/pyenv) for managing python versions
- use `pip install --user`
- in .zprofile add `export PATH=$HOME/.local/bin:$PATH`

## Instructions

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

Get license key logging in [here](https://account.jetbrains.com/licenses/assets).

Additional downloads [here](https://confluence.jetbrains.com/display/IntelliJIDEA/Previous+IntelliJ+IDEA+Releases).

```bash
tar xfz ideaIU-VERSION.tar.gz
sudo mv idea-IU-VERSION /usr/lib
/usr/lib/idea-IU-VERSION/bin/idea.sh
```

### Optional

**Python**

Use pyenv to manage python versions.
Install to $HOME/.pyenv/bin/pyenv to be compatible with multiple OS'.

### TODO

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

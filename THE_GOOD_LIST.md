# The Good List

Testing too many distros to automate for all of them (till I get ansible working on all of them), so here is a list of all the good things to install on a new dev machine.

## Shell

> do this first so other installs know shell and paths are setup properly

- fish
- fundle
- `cp ./dotconfig/fish/* ~/.config/fish/`

## Essentials

- git
- vim
- pyenv

### Awesome vim

```bash
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

### n (node version manager)

> replacement for nvm

```bash
# Yes use bash and not fish.
# Path and env vars are setup in config.fish already

curl -L https://git.io/n-install | bash
```

### guake

1. Install guake
1. Add guake to startup.
For example:
`ln -s /usr/share/applications/guake.desktop /etc/xdg/autostart/`
1. Set F12 to `/usr/bin/guake` hotkey explicitly if it doesn't work
(if for instance you are using KDE plasma)

## IDE

- vscode
- install "syncing" plugin to import settings from gist: `cd9e74e06854ade3608242ca9cd30cbd`
- CTRL + SHIFT + P, `Syncing: Download settings`

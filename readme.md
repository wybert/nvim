# Important


Use slime with tmux/zellij and neovim.

It works well in linux but when in windows it seems very slow. But in windows or mac vs code will be a better choice. This only works on some servers if I could not use vs code like somehow my remote ssh server in vscode is not working on my stupid windows machine. 

The slime is slow because of the fish shell I use. Put this in the vim config file to make it faster. see [https://github.com/jpalardy/vim-slime/issues/204](https://github.com/jpalardy/vim-slime/issues/204).

```vim
set shell=/bin/sh " set default shell
```

## Install neovim



### For linux

from https://github.com/neovim/neovim/wiki/Installing-Neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

# you can rename the nvim.appimge too
mv nvim.appimage nvim
chmod u+x nvim

# If the ./nvim.appimage command fails, try:

./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim

```


### For Mac

```bash
brew instal neovim
```


## pull the config

```bash
cd ~/.config
git clone https://github.com/wybert/nvim.git
rm -rf ~/.config/nvim/.git
```

## Dependacy

1. ripgrep `sudo apt-get install ripgrep`
2. fd `sudo apt install fd-find`
3. if you want use Github Copilot, install nodejs `brew install node` 


## install vim-plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```


## install plugins

```bash
nvim
:PlugInstall
```

## Setup the copilot

```bash
nvim
:Copilot
```







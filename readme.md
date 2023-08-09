# Important

Use slime with tmux/zellij and neovim.

It works well in linux but when in windows it seems very slow. But in windows or mac vs code will be a better choice. This only works on some servers if I could not use vs code like somehow my remote ssh server in vscode is not working on my stupid windows machine.

## Install neovim


from https://github.com/neovim/neovim/wiki/Installing-Neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

# If the ./nvim.appimage command fails, try:

./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim

```


## pull the config

```bash
cd ~/.config
git clone https://github.com/wybert/nvim.git
rm -rf ~/.config/nvim/.git
```

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

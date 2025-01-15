sudo apt update
sudo apt install zsh curl vim neovim git gcc g++

git clone https://github.com/dalongbao/config
cd config
mv .zshrc ..
mv fastfetch ../.config
mv terminalart ..

cd

cd .config
git clone https://github.com/dalongbao/nvim

setxkbmap -option caps:escape
chsh -s $(which zsh) 

# nix install

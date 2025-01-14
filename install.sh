#!/bin/bash
echo "- Install ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "- Install zsh plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "- Install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

echo "- Install nodejs 20"
nvm install --lts

echo "- Install Vim Plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "- Install Vim plugins"
sudo apt install python3-greenlet python3-typing-extensions vim-gtk3 python3-msgpack
pip3 install --break-system-packages --user pynvim
curl -L https://github.com/machsix/dotfile/raw/master/.vimrc -o ~/.vimrc
vim +PlugInstall +qall

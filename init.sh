#!/usr/bin/env bash
cp ~/.vimrc ~/.vimrc.orig
rm ~/.vimrc
ln -s .vimrc ~/

cp ~/.gvimrc ~/.gvimrc.orig
rm ~/.gvimrc
ln -s .gvimrc ~/

cp ~/.tmux.conf ~/.tmux.conf.orig
rm ~/.tmux.conf
ln -s .tmux.conf ~/

mkdir ~/.vim/backups
mkdir ~/.vim/swaps
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ./.zshrc
ln -s custom.zsh ~/.oh-my-zsh/custom/
chsh -s $(which zsh)
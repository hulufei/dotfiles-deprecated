#!/usr/bin/env bash
rm -rf ~/.vim.orig
mv ~/.vim ~/.vim.orig

rm -f ~/.vimrc.orig
mv ~/.vimrc ~/.vimrc.orig
ln .vimrc ~/

rm -f ~/.gvimrc.orig
mv ~/.gvimrc ~/.gvimrc.orig
ln .gvimrc ~/

rm -f ~/.tmux.conf.orig
mv ~/.tmux.conf ~/.tmux.conf.orig
ln .tmux.conf ~/

# Git config
git config --global merge.tool vimdiff

mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
ln custom.zsh ~/.oh-my-zsh/custom/
chsh -s $(which zsh)

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Node setup
brew install nvm
nvm alias default stable
nvm install stable

brew install the_silver_searcher

# fasd
git clone https://github.com/clvv/fasd.git
cd fasd
sudo make install
cd ..

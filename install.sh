#!/usr/bin/env zsh
mkdir -p ~/.vim/bundle
[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

ln -sf $(dirname $0:a)/.vimrc ~/.vimrc
vim +PluginInstall +qall
cd ~/.vim/bundle/tern_for_vim && npm i
cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer --java-completer --js-completer

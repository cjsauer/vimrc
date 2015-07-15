set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" YankRing
Plugin 'YankRing.vim'

" CtrlP fuzzy finder
Plugin 'kien/ctrlp.vim'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Configuration
"
" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Quickly source this file
nnoremap <leader>sv :source ~/.vimrc<return>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Configuration
"
" Change the default mapping
let g:ctrlp_map = '<C-f>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiple Cursor Configuration
"
" Change the default mappings
let g:multi_cursor_next_key='<c-k>'

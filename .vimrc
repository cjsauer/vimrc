""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
"
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

" vim-airline
Plugin 'bling/vim-airline'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-commentary
Plugin 'tpope/vim-commentary'

" vim-unimpaired
Plugin 'tpope/vim-unimpaired'

" vim-sensible to get some sensible default settings
Plugin 'tpope/vim-sensible'

" vim-surround
Plugin 'tpope/vim-surround'

" vim-repeat
Plugin 'tpope/vim-repeat'

" Color schemes!
Plugin 'flazz/vim-colorschemes'

" Syntastic syntax checking
Plugin 'scrooloose/syntastic'
" JavaScript linting
Plugin 'Shutnik/jshint2.vim'

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
" General
"
" Sets how many lines of history VIM has to remember
set history=700

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Quickly source this file
nnoremap <leader>sv :source ~/.vimrc<return>

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Toggle paste mode
set pastetoggle=<F5>

" Tab settings
filetype plugin indent on
set tabstop=4
set shiftwidth=2
set expandtab

" Always show some lines after the cursor
set scrolloff=8



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
" 
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
" 
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Enable 256 colors
set t_Co=256

" Syntax highlighting
syntax enable

" Set the color scheme
set background=light
let g:solarized_termcolors=256
colorscheme solarized




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Configuration
"
" Change the default mapping
let g:ctrlp_map = '<C-f>'

" Show hidden files too
let g:ctrlp_show_hidden = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiple Cursor Configuration
"
" Change the default mappings
let g:multi_cursor_next_key='<c-k>'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration
"
" Always display status line
set laststatus=2

" Auto populate the g:airline_symbols dictionary
let g:airline_powerline_fonts = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive git shortcuts
"
nnoremap <leader>gs :Gstatus<return>
nnoremap <leader>gd :Gdiff<return>
nnoremap <leader>gb :Gblame<return>
nnoremap <leader>gr :Gread<return>
nnoremap <leader>gc :Gcommit<return>
nnoremap <leader>gw :Gwrite<return>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic configuration
"
" status line settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Check files on open
let g:syntastic_check_on_open = 1

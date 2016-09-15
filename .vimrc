""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.dotfiles/vim/bundle/Vundle.vim
call vundle#begin('~/.dotfiles/vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YankRing
Plugin 'YankRing.vim'

" CtrlP fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-commentary
Plugin 'tpope/vim-commentary'

" eclim mirror
Plugin 'dansomething/vim-eclim'

" mustache/handlebars
Plugin 'mustache/vim-mustache-handlebars'

" vim-localvimrc
Plugin 'embear/vim-localvimrc'

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

" delimitMate for auto closing of parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Tern-based JavaScript intelligent editing support
" Be sure to run `npm install` in the `bundle/tern_for_vim` folder
Plugin 'ternjs/tern_for_vim'

" YouCompleteMe Autocompletion
" Works great with Tern!
Plugin 'Valloric/YouCompleteMe'

" JavaScript syntax and indent plugins
Plugin 'pangloss/vim-javascript'

" Emmet-vim for super fast HTML editing
Plugin 'mattn/emmet-vim'

" Supertab to get Ultisnips and YCM to play nice
Plugin 'ervandew/supertab'

" Ultisnips snippet engine
Plugin 'SirVer/ultisnips'

" Lots of snippets for lots of languages
Plugin 'honza/vim-snippets'

" Add git gutter to note diffs inline
Plugin 'airblade/vim-gitgutter'

" Add NerdTree to visualize directories
Plugin 'scrooloose/nerdtree'

" Add git flags support to NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

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
set shiftwidth=4
set noexpandtab

" Always show some lines after the cursor
set scrolloff=8

" Wrap lines, but only insert newlines when enter is pressed
set wrap " Wrap words visually
set linebreak " wrap only at the 'breakat' option
set nolist " list disables linebreak
" Prevent Vim from automatically inserting line 
"   breaks in newly entered text
set textwidth=0
set wrapmargin=0

" Spell check commit messages, text, and markdown files
autocmd BufNewFile,BufRead *.md setlocal spell
autocmd BufNewFile,BufRead *.txt setlocal spell
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Open split windows below / to the right
set splitbelow
set splitright

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around
"
" Faster window switching
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk



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

" Highlights all search hits
set hlsearch

" Toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>

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
set background=dark
let g:solarized_termcolors=256
colorscheme lucius

" Use the vim wildmenu for command completion
set wildmenu
set wildmode=longest:full,full

" Ignore files in the wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.meteor/*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eclim
"
" eclim maps
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch<cr>
nnoremap <silent> <buffer> <leader>k :JavaSearchContext<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetypes
"
" Force *.md files to be recognized as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown




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

" Ignore some files when fuzzy searching
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|meteor|bundle|node_modules|bower_components)$',
  \ 'file': '\v\.(so|swp|zip)$'
  \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
"
" Toggle NERDTree shortcut
map ,nt :NERDTreeToggle<CR>


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
" vim-localvimrc config
"
" Don't ask to load the .vimrc file
let g:localvimrc_ask = 0
" load files going from working dir to root
let g:localvimrc_reverse = 1
let g:localvimrc_name = [ ".lvimrc", ".vimrc" ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-unimpaired extensions
"
nmap [g :tabprev<return>
nmap ]g :tabnext<return>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic configuration
"
" status line settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Check files on open
let g:syntastic_check_on_open = 0

" Configure usage of the JSX linter
let g:syntastic_javascript_checkers = ['eslint']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tern
"
let g:is_tern_argument_hints_enabled=1
let g:tern_show_argument_hints = 'on_hold'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe Configuration
"
" Completion enabled in comments
let g:ycm_complete_in_comments = 1

" Close the preivew window after we pick an option
let g:ycm_autoclose_preview_window_after_completion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:EclimCompletionMethod = 'omnifunc'

autocmd FileType javascript setlocal omnifunc=tern#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips configuration
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>""
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YankRing Configuration
"
" Hotkey for the :YRShow
nnoremap <silent> <F10> :YRShow<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiple Cursor Configurationp>'
"
" Change the default mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'

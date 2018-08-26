# Elliott's vimrc

I completely rewrote my vimrc by hand because my last one was borrowed and used tons of features that I didn't use. This one is nice and clean and biased towards JavaScript/Meteor development. 

## Installation

1. First make sure that you've backed up or removed your own vim files (`.vimrc`, `.vim/`).
2. Run install.sh

## Valuable shortcuts

+ `,sv` sources the .vimrc file
+ `<F3>` toggles search highlighting
+ `<F5>` toggles paste mode
+ `:W` save file with sudo
+ `,w` quickly save a file
+ `<c-[jklh]>` fast window switching
+ `,nt` open the NERDTree tab
+ `gcc` toggle comment on the current line

## Included plugins

+ [delimitMate](https://github.com/Raimondi/delimitMate)
+ [emmet-vim](https://github.com/mattn/emmet-vim)
+ [GitGutter](https://github.com/airblade/vim-gitgutter)
+ [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)
  + Remapped to `<C-m>` to not conflict with YankRing
+ [NERDTree](https://github.com/scrooloose/nerdtree)
+ [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
+ [Syntastic syntax checkers](https://github.com/scrooloose/syntastic)
  + Included linters
    + eslint: be sure to run `npm install -g eslint`. 
    + **Note** you can install more syntax checkers yourself. Check the syntastic [wiki](https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers) for a list.
+ [tern_for_vim](https://github.com/marijnh/tern_for_vim)
  + [Tern](http://ternjs.net/)-based, intelligent editing support for JavaScript. 
+ [Ultisnips](https://github.com/SirVer/ultisnips)
  + [Supertab](https://github.com/ervandew/supertab) is used to help YCM and Ultisnips play nice together. The tab key should act intelligently when scrolling through the completion list, or expanding a snippet.
+ [vim-airline](https://github.com/bling/vim-airline)
+ [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
+ [vim-commentary](https://github.com/tpope/vim-commentary)
+ [vim-fugitive](https://github.com/tpope/vim-fugitive)
  + `,gs` git status
  + `,gd` git diff
  + `,gb` git blame
  + `,gc` git commit
  + `,gr` git read (clear changes)
  + `,gw` git write (save and add)
+ [vim-javascript](https://github.com/pangloss/vim-javascript)
+ [vim-repeat](https://github.com/tpope/vim-repeat)
+ [vim-sensible](https://github.com/tpope/vim-sensible)
+ [vim-surround](https://github.com/tpope/vim-surround)
+ [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
+ [YankRing.vim](https://github.com/vim-scripts/YankRing.vim)
  + `<F10>` displays the content of the YankRing (press `p` to paste selection from the list)
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

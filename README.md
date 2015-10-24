# Calvin's vimrc

I completely rewrote my vimrc by hand because my last one was borrowed and used tons of features that I didn't use. This one is nice and clean and biased towards JavaScript/Meteor development. 

## Installation

1. First make sure that you've backed up or removed your own vim files (`.vimrc`, `.vim/`).
2. Clone the repo to your home directory: `git clone https://github.com/cjsauer/vimrc.git ~/.vim`
3. Prepare Vundle: `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
4. `cd .vim/`
5. `./install.sh`. This creates a symbolic link called `.vimrc` in your home directory, so you are free to edit the .vimrc in this repo and your changes will be observed. It also installs all the plugins using Vundle (this could take a bit of time).
6. Follow [these instructions](https://powerline.readthedocs.org/en/master/installation.html#patched-fonts) to get the fonts installed and working correctly for vim-airline. *This is optional. If you don't want to use airline, remove it from the .vimrc file*.
7. Install some linters `npm install -g eslint`, `npm install -g babel-eslint`, `npm install -g eslint-plugin-react`
8. Call `npm install` in the `bundle/tern_for_vim` directory to install Tern. 
9. Install YouCompleteMe. Follow [these instructions](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation).

For Meteor developing, Tern is much more useful with Slava's [tern-meteor](https://github.com/Slava/tern-meteor) package. Follow [these instructions](https://github.com/Slava/tern-meteor#installation-for-vim) to get it setup in vim and in your Meteor project. 


## Valuable shortcuts

+ `,sv` sources the .vimrc file
+ `<F5>` toggles paste mode
+ `:W` save file with sudo
+ `,w` quickly save a file
+ `<c-[jklh]>` fast window switching
+ `,nt` open the NERDTree tab
+ `gcc` toggle comment on the current line

## Included plugins

+ [CtrlP.vim](https://github.com/kien/ctrlp.vim)
  + Remapped to `<c-f>` to not conflict with YankRing. Also note that there are some wildcards in the `.vimrc` file that will ignore annoying directories like `.meteor`, `bundle` (when working on the .vimrc). You can add others to the regex in the `.vimrc`.
+ [delimitMate](https://github.com/Raimondi/delimitMate)
+ [emmet-vim](https://github.com/mattn/emmet-vim)
+ [GitGutter](https://github.com/airblade/vim-gitgutter)
+ [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)
  + Remapped to `<c-q>` to not conflict with YankRing
+ [NERDTree](https://github.com/scrooloose/nerdtree)
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
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

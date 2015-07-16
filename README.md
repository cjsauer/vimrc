# Calvin's vimrc

## Valuable shortcuts

+ `,sv` sources the .vimrc file
+ `<F5>` toggles paste mode
+ `:W` save file with sudo
+ `,w` quickly save a file
+ `<c-[jklh]>` fast window switching

## Included plugins

+ [YankRing.vim](https://github.com/vim-scripts/YankRing.vim)
+ [CtrlP.vim](https://github.com/kien/ctrlp.vim)
  + Remapped to `<c-f>` to not conflict with YankRing. Also note that there are some wildcards in the `.vimrc` file that will ignore annoying directories like `.meteor`, `bundle` (when working on the .vimrc). You can add others to the regex in the `.vimrc`.
+ [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)
  + Remapped to `<c-k>` to not conflict with YankRing
+ [vim-airline](https://github.com/bling/vim-airline)
  + Make sure that you have correctly followed [these instructions](https://powerline.readthedocs.org/en/master/installation.html#patched-fonts) to get the fonts installed and working correctly.
+ [vim-fugitive](https://github.com/tpope/vim-fugitive)
  + Fugitive shortcuts: `,gs` git status, `,gd` git diff, `,gb` git blame, `,gc` git commit, `,gr` git read (clear changes) `,gw` git write (save and add)
+ [vim-commentary](https://github.com/tpope/vim-commentary)
+ [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
+ [vim-sensible](https://github.com/tpope/vim-sensible)
+ [vim-surround](https://github.com/tpope/vim-surround)
+ [vim-repeat](https://github.com/tpope/vim-repeat)
+ [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
+ [Syntastic syntax checkers](https://github.com/scrooloose/syntastic)
  + Included linters
    + jshint2: be sure to run `npm install -g jshint`. 
    + **Note** you can install more syntax checkers yourself. Check the syntastic [wiki](https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers) for a list.
+ [delimitMate](https://github.com/Raimondi/delimitMate)
+ [tern_for_vim](https://github.com/marijnh/tern_for_vim)
  + [Tern](http://ternjs.net/)-based, intelligent editing support for JavaScript. Be sure to call `npm install` in the `bundle/tern_for_vim` directory!). This is especially useful with Slava's [tern-meteor](https://github.com/Slava/tern-meteor) package. Follow [these instructions](https://github.com/Slava/tern-meteor#installation-for-vim) to get it setup.
+ [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
  + Make sure that you install it. Follow [these instructions](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation).
+ [vim-javascript](https://github.com/pangloss/vim-javascript)

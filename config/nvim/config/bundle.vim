" fill out pathogen modules
execute pathogen#infect()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" user bundles
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'https://github.com/eagletmt/ghcmod-vim.git'
Plug 'https://github.com/eagletmt/neco-ghc'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'https://github.com/Shougo/vimproc.vim.git'
call plug#end()

" fill out pathogen modules
execute pathogen#infect()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" user bundles
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ascenator/L9'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidzchen/vim-bazel'
Plug 'derekwyatt/vim-scala'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'garbas/vim-snipmate'
Plug 'git://git.wincent.com/command-t.git'
Plug 'godlygeek/tabular'
Plug 'google/vroom'
Plug 'jpalardy/vim-slime'
Plug 'kchmck/vim-coffee-script'
Plug 'mileszs/ack.vim'
Plug 'nvie/vim-flake8'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/vimscriptuploader.rb'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'wting/rust.vim'
call plug#end()

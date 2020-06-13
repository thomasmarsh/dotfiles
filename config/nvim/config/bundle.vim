" fill out pathogen modules
" execute pathogen#infect()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
" user bundles
Plug 'ElmCast/elm-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'alx741/vim-hindent'
Plug 'ascenator/L9'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidzchen/vim-bazel'
Plug 'derekwyatt/vim-scala'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'easymotion/vim-easymotion'
Plug 'edwinb/idris2-vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'garbas/vim-snipmate'
Plug 'git://git.wincent.com/command-t.git', {'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }
Plug 'godlygeek/tabular'
Plug 'google/vroom'
Plug 'hwayne/tla.vim'
Plug 'jpalardy/vim-slime'
Plug 'jremmen/vim-ripgrep'
Plug 'kchmck/vim-coffee-script'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'nvie/vim-flake8'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/vimscriptuploader.rb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'udalov/kotlin-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'wting/rust.vim'
Plug 'zirrostig/vim-schlepp'
call plug#end()

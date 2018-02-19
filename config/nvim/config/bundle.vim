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
call plug#end()

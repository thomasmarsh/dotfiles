" set up for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" user bundles
Bundle 'bling/vim-airline'

" fill out pathogen modules
execute pathogen#infect()

set wildmode=longest,list,full
set wildmenu
set ignorecase smartcase incsearch
set history=400
filetype plugin indent on
set autoread
set mouse=a
syntax on
set ruler
set hlsearch

set ts=4 sw=4 sts=4 noet
set autoindent
set expandtab
set smartindent

set background=dark
colorscheme elflord
set number
set pastetoggle=<F12>
set backspace=eol,start,indent

autocmd FileType make set noexpandtab

au BufNewFile,BufRead *.mm          setf objcpp
au BufNewFile,BufRead *.cpp set syntax=cpp11

noremap n n:call HighlightNearCursor()<CR>
noremap p p:call HighlightNearCursor()<CR>
noremap * *:call HighlightNearCursor()<CR>

" provide two lines status to allow vim-airline to show up
set laststatus=2

" Use special vim-airline (powerline) fonts
let g:airline_powerline_fonts=1

" tell vim to use 256 colors
set t_Co=256

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

au BufRead,BufNewFile *.swift set filetype=swift
au! Syntax swift source $HOME/.vim/syntax/swift.vim

let g:slime_target = "tmux"

nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

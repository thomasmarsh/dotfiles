filetype plugin indent on
set nocompatible
set number
set nowrap
set showmode
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set tw=80
set expandtab
set incsearch
set history=1000
set autoread
set mouse=a
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
set t_Co=256
syntax on
set cmdheight=1
set ruler
set hlsearch

set background=light
colorscheme solarized
set pastetoggle=<F12>
set backspace=eol,start,indent

autocmd FileType make set noexpandtab

noremap n n:call HighlightNearCursor()<CR>
noremap p p:call HighlightNearCursor()<CR>
noremap * *:call HighlightNearCursor()<CR>

" provide two lines status to allow vim-airline to show up
set laststatus=2

" Use special vim-airline (powerline) fonts
let g:airline_powerline_fonts=1

" tell vim to use 256 colors
set t_Co=256
set expandtab
set t_8f=\e[38;2;%lu;%lu;%lum
set t_8b=\e[48;2;%lu;%lu;%lum

nmap <leader>= :TagbarToggle<CR>
let g:tagbar_autofocus = 1

map <Leader>n :NERDTreeToggle<CR>

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

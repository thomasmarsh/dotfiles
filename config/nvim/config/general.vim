filetype plugin indent on

set nocompatible    " Don't try to be vi compatible
set autoread        " Reload file if it changes in the background
set mouse=a         " Enable mouse for all modes
syntax on
set history=1000    " History for ':' commands, searches, expressions, etc.

"====[ Line length ]====
set nowrap          " Disable automatic wrapping
set textwidth=80    " When to break text (when 'set wrap' or with 'gq')

"====[ Tab and whitespace handling ]====
set smarttab        " <Tab> inserts blanks
set softtabstop=4   " Number of spaces for <Tab> (like tabs with backspacing)
set shiftwidth=4    " Number of spaces used when indenting with > and <
set expandtab       " Number of spaces to insert for a tab (portable vi option)
set smartindent     " Use language-specific indenting rules on new line
set autoindent      " Copy indent from current line when starting new line

" Sane backspace handling
set backspace=eol,start,indent

" Make and exception for Makefiles
autocmd FileType make set noexpandtab

"====[ Search ]====
set smartcase       " Override 'ignorecase' if search pattern has uppercase
set incsearch       " Show search matches while you are typing the command
set hlsearch        " Highlight all matches

"====[ Menus and wildcard handing ]====
set completeopt=menuone,menu,longest
set wildmenu
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set completeopt+=longest

"====[ Appearance ]====
set number          " Show line numbers
set ruler           " Show line, column, position in file
set cmdheight=1     " Number of lines to use for the command-line
set laststatus=2    " Provide two lines status to allow vim-airline to show up
set showmode        " Display insert/replace/visual mode

" Use special vim-airline (powerline) fonts
let g:airline_powerline_fonts=1

" Theme
set background=light
colorscheme solarized

"====[ Tell vim to use 256 colors ]====
set t_Co=256
set t_8f=\e[38;2;%lu;%lu;%lum
set t_8b=\e[48;2;%lu;%lu;%lum

"====[ Make the 81st column stand out ]====
highlight OverLength ctermbg=magenta ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"====[ Show dodgy whitespace ]====
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"====[ Special input handling ]====
nnoremap ; :        " Use ';' to initiate command-line

set pastetoggle=<F12>

nmap <leader>= :TagbarToggle<CR>
let g:tagbar_autofocus = 1

map <Leader>n :NERDTreeToggle<CR>

" Fuzzy search with Ctrlp
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

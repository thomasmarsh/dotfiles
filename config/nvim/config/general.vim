"====[ Core settings ]==========================================================

    set nocompatible    " Don't try to be vi compatible
    set autoread        " Reload file if it changes in the background
    set mouse=a         " Enable mouse for all modes
    set history=1000    " History for ':' commands, searches, expressions, etc.

    syntax on
    filetype plugin indent on


"====[ Line length ]============================================================

    set nowrap          " Disable automatic wrapping
    set textwidth=80    " When to break text (when 'set wrap' or with 'gq')


"====[ Tab and whitespace handling ]============================================

    set smarttab        " <Tab> inserts blanks
    set softtabstop=4   " Number of spaces for <Tab> when backspacing, etc.
    set shiftwidth=4    " Number of spaces used when indenting with > and <
    set expandtab       " Portable equivalent to softabstop
    set smartindent     " Use language-specific indenting rules on new line
    set autoindent      " Copy indent from current line when starting new line

    " Sane backspace handling
    set backspace=eol,start,indent

    " Make and exception for Makefiles
    autocmd FileType make set noexpandtab


"====[ Search ]=================================================================

    set smartcase       " Override 'ignorecase' if search pattern has uppercase
    set incsearch       " Show search matches while you are typing the command
    set hlsearch        " Highlight all matches


"====[ Menus and wildcard handing ]=============================================

    set completeopt=menuone,menu,longest
    set wildmenu
    set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
    set wildmode=longest,list,full
    set completeopt+=longest

    " When searching with ctrlp, ignore certain patterns
    let g:ctrlp_custom_ignore = '\v[\/]dist$'


"====[ Appearance ]=============================================================

    set number          " Show line numbers
    set ruler           " Show line, column, position in file
    set cmdheight=1     " Number of lines to use for the command-line
    set laststatus=2    " Provide two lines status for vim-airline
    set showmode        " Display insert/replace/visual mode

    " Use special vim-airline (powerline) fonts
    let g:airline_powerline_fonts=1

    " Theme
    set background=light
    colorscheme solarized

    " Tell vim to use 256 colors
    set t_Co=256
    set t_8f=\e[38;2;%lu;%lu;%lum
    set t_8b=\e[48;2;%lu;%lu;%lum


"====[ More complicated apearance enhancements ]================================

    " Make the 81st column stand out
    highlight OverLength ctermbg=magenta ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/

    " Highlight dodgy characters
    set listchars=tab:⇒·,trail:␣,nbsp:~"
    set list!


"====[ Special input handling ]=================================================

    " Use ';' to initiate command-line
    nnoremap ; :

    " Use '=' to go to first nonspace of next line
    nnoremap = +

    " Use '+' to insert a line after the cursor
    nnoremap + o<ESC>

    " Use "_" to insert a line before the cursor
    nnoremap _ O<ESC>

    " Unfortunately function keys aren't very convenient on Macbooks
    set pastetoggle=<F12>

    " Use ',' to launch tree
    nnoremap , :NERDTreeToggle<CR>

    " '\-' launches tagbar
    nmap <leader>- :TagbarToggle<CR>
    let g:tagbar_autofocus = 1

"====[ I'm sick of typing :%s/.../.../g ]=======================================

    vmap S          :Blockwise s//g<LEFT><LEFT>
    vmap <expr> M   ':s/' . @/ . '//g<LEFT><LEFT>'


"====[ Make arrow keys move visual blocks around ]==============================

    vmap <up>    <Plug>SchleppUp
    vmap <down>  <Plug>SchleppDown
    vmap <left>  <Plug>SchleppLeft
    vmap <right> <Plug>SchleppRight

    vmap D       <Plug>SchleppDupLeft
    vmap <C-D>   <Plug>SchleppDupLeft


"====[ Highlight current search term in red ]==================================

    nnoremap <silent># #:call HLNext(0.4)<cr>
    nnoremap <silent>* *:call HLNext(0.4)<cr>
    nnoremap <silent>n n:call HLNext(0.4)<cr>
    nnoremap <silent>N N:call HLNext(0.4)<cr>

    function! HLNext (blinktime)
        highlight WhiteOnMagenta ctermfg=white ctermbg=magenta
        let [bufnum, lnum, col, off] = getpos('.')
        let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
        let target_pat = '\c\%#\%('.@/.'\)'
        let ring = matchadd('WhiteOnMagenta', target_pat, 101)
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        call matchdelete(ring)
        redraw
    endfunction


"====[ Open any file with a pre-existing swapfile in readonly mode "]==========

    augroup NoSimultaneousEdits
        autocmd!
        autocmd SwapExists * let v:swapchoice = 'o'
        autocmd SwapExists * echomsg ErrorMsg
        autocmd SwapExists * echo 'Duplicate edit session (readonly)'
        autocmd SwapExists * echohl None
        autocmd SwapExists * sleep 2
    augroup END


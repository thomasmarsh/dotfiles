" -----------------------------------------------------------------
" The following from:
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally#easier-split-navigations
" -----------------------------------------------------------------

" We can use different key mappings for easy navigation
" between splits to save a keystroke. So instead of ctrl-w
" then j, it’s just ctrl-j:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom, which feels more
" natural than Vim’s default:
set splitbelow
set splitright

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

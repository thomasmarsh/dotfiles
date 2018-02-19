DOT=~/git/dotfiles
CFG=~/.config

ln -s $DOT/config $CFG

ln -s $CFG/.ghci                ~/.ghci
ln -s $CFG/tmux/git.conf        ~/tmux-git.conf
ln -s $CFG/tmux/tmux.conf       ~/tmux-git.conf
ln -s $CFG/tmux/tmux.conf.local ~/tmux-git.conf.local
ln -s $CFG/nvim                 ~/.vim
ln -s $CFG/nvim/config/init.vim ~/.vimrc

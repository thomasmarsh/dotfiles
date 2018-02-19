#!/usr/local/bin/fish
#
# NOTE: fish shell

# The location of this git repo
set dot ~/git/dotfiles

# The target destination of the ~/.config directory
set cfg ~/.config

function link
    set src    "$argv[1]"
    set target "$argv[2]"

    if not test -e $src
        echo "ERROR: source file does not exist: $src "
    else
        if test -e $target
            if not test -L $target
                echo "ERROR: target alread exists but is NOT link: $target"
            else
                echo "WARN: target already exists; skipping: $target"
            end
        else
            echo "EXEC: ln -s $src $target"

            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            #
            # UNCOMMENT TO PERFORM THE LINK
            #
            # XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

            #ln -s $src $target
        end
    end
end

link $dot/config $cfg

link $cfg/ghci/ghci.conf       ~/.ghci
link $cfg/lldb/lldb.init       ~/.lldbinit
link $cfg/tmux/git.conf        ~/.tmux-git.conf
link $cfg/tmux/tmux.conf       ~/.tmux.conf
link $cfg/tmux/local.conf      ~/.tmux.conf.local
link $cfg/nvim                 ~/.vim
link $cfg/nvim/config/init.vim ~/.vimrc

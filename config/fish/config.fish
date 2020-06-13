set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH ~/Library/Haskell/bin
#set -gx PATH $PATH ~/.rbenv/bin
set -gx PATH $PATH ~/.nix-profile/bin
set -gx PATH $PATH ~/.nimble/bin

set -gx GOPATH ~/go
set -gx PATH $PATH $GOPATH/bin

set -gx ANDROID_HOME ~/Library/Android/sdk

set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

# opam configuration
# source /Users/tmarsh/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

source $HOME/.cargo/env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tmarsh/google-cloud-sdk/path.fish.inc' ]; . '/Users/tmarsh/google-cloud-sdk/path.fish.inc'; end


if test -e "/Users/tmarsh/.nix-profile/etc/profile.d/nix.sh"
  fenv ". /Users/tmarsh/.nix-profile/etc/profile.d/nix.sh"
end

set -gx NVM_DIR ~/.nvm
# bass source ~/.nvm/nvm.sh

alias vi nvim
alias vim nvim
alias ag rg

alias z "cd ~/go/src/gitlab.com/zeropw/zero"

# opam configuration
source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

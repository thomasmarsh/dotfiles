set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH ~/Library/Haskell/bin
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

# opam configuration
# source /Users/tmarsh/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tmarsh/google-cloud-sdk/path.fish.inc' ]; . '/Users/tmarsh/google-cloud-sdk/path.fish.inc'; end


if test -e "/Users/tmarsh/.nix-profile/etc/profile.d/nix.sh"
  fenv ". /Users/tmarsh/.nix-profile/etc/profile.d/nix.sh"
end

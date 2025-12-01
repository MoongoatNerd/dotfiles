# Add $HOME/bin to path
if test -d "$HOME/bin"
    fish_add_path "$HOME/bin"
    echo "~/bin added to path"
end

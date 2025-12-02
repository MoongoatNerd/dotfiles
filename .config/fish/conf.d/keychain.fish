# Script stolen from the user NotTheDr01ds on StackExchange
#
# To add a new SSH key, use:
# set --universal --append SSH_KEYS_TO_AUTOLOAD path/to/key
# To remove a key, remove it from the list using it's index:
# set --universal --erase SSH_KEYS_TO_AUTOLOAD[index_of_key]

if status is-interactive
    and test -z "$SSH_CONNECTION"
    keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
end

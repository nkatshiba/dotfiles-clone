function bac --wraps bat --description 'bat $argv | wlc'

    bat $argv | wl-copy
    echo "wlc < $argv"

end

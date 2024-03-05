function get_keys
    set CURRENT (hyprctl devices -j | jq -r '.keyboards[] | select(.name == "keyd-virtual-keyboard") | .active_keymap' | cut -c 1-2 | tr 'A-Z' 'a-z')
    echo $CURRENT
end

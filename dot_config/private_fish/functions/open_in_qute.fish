function open_in_qute
    hyprctl dispatch exec qutebrowser "$argv"
    notify-send -r 486 "[QUTE]" "$argv"
    killactive
end

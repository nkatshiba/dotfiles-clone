function hyprpicker_and_copy --wraps 'hyprpicker' --description 'hyprpicker && wl-copy'
    # launch hyprpicker
    set COLOR (hyprpicker)

    # view color with pastel
    pastel color $COLOR

    # sub "#" -> ""
    set COLOR_CLEAN (string replace -a "#" "" $COLOR)

    # reset color
    set RESET set_color normal

    echo $COLOR_CLEAN | wl-copy -n

    set_color $COLOR_CLEAN
    wl-paste
    eval $RESET
end

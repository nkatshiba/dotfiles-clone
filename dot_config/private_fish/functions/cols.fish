function cols

    set COLS_LIST "ox: #4b132e" "lightpink: #c053ab" "yellow: #fbc740" "pink: #fb4099" "red: #f4005f" "teal: #00f495" "purple: #7c40fb" "blue: #005ff4" "orange: #fa8419" "magenta: #ec40fb" "turquoise: #40e5fb"

    set COLOR_FULL (for COL in $COLS_LIST; echo (string split ' ' $COL); end | fzf)
    set COLOR_NAME (string split ' ' $COLOR_FULL)[1]
    set COLOR (string split ' ' $COLOR_FULL)[2]
    echo $COLOR_NAME


    switch $COLOR
        case yellow y
            set COLOR "#fbc740"
        case lightpink
            set COLOR "#c053ab"
        case pink
            set COLOR "#fb4099"
        case red
            set COLOR "#f4005f"
        case teal
            set COLOR "#00f495"
        case purple
            set COLOR "#7c40fb"
        case blue
            set COLOR "#005ff4"
        case orange
            set COLOR "#fa8419"
        case magenta
            set COLOR "#ec40fb"
        case turq
            set COLOR "#40e5fb"
        case ox blood
            set COLOR "#4b132e"


    end
    # copy
    echo $COLOR | wl-copy -n

    pastel color "$COLOR"
    set_color $COLOR
    echo "$COLOR > wlc"
    set_color normal
end

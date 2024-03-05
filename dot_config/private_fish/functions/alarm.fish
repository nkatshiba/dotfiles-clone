function alarm --wraps termdown --description 'termdown [countdown_time]'

    set MIN $argv
    echo $MIN

    set MIN (math $MIN x 60)


    termdown --critical 60 -f 'doh' -v 'europe/sv' $MIN
    # clear
    # set ESPEAK "BEEP BOOP BEEP BOOP RING DING RING DING WEEE WAAA WEEE WAAA WEEE WAAA WEEE WAAA ding dong ding dong pling plong ching chong ching chong ding dong pling plong le batong"
    # espeak -v asia/zh-yue $ESPEAK
end

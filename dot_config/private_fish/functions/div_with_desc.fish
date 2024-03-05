function div_with_desc -a SYM DESC COL
    set LEN_COLS (tput cols)
    set LEN_DESC (string length "$DESC")
    set OFFSET 4
    set LEN (math $LEN_COLS - $LEN_DESC - $OFFSET)

    set COL (set_color $COL)
    set COL_NORM (set_color normal)

    set -l SEPARATOR_SYM "$SYM"
    set -l SEPARATOR $COL$SEPARATOR_SYM
    set -l SEPARATOR (string repeat -n $LEN $SEPARATOR)

    set -l FILLER_SYM "$SYM"
    set -l FILLER $COL$FILLER_SYM
    set -l FILLER (string repeat -n 2 $FILLER)

    set -l SEPARATOR $COL"$FILLER $DESC $SEPARATOR"$COL_NORM
    echo $SEPARATOR
end

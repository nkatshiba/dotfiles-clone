#! /usr/bin/env fish

function wraps

    clear -x

    cd $HOME/.config/fish/functions

    set DIV "***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***"

    read -l WRAPS_WHAT --prompt-str="wraps which function?> " echo $INPUT_STR
    read -l NAME --prompt-str="name of file?> " echo $INPUT_STR
    # read -l EXT --prompt-str="ext?> " echo $INPUT_STR
    echo $DIV \n

    set EXT ".fish"
    set FILENAME "$NAME$EXT"
    set SHE "#! /usr/bin/env fish" \n
    set VIM "# vim: ft=fish.cfg" \n\n
    set ARGVSTR '$argv'
    set WRAPSTR "function $NAME --wraps '$WRAPS_WHAT' --description 'alias $NAME=$WRAPS_WHAT'" \n\t\t"command $WRAPS_WHAT $ARGVSTR"\n"end"
    set FINAL "$SHE$VIM$WRAPSTR"


    echo $FINAL > $FILENAME
    echo "" >> $FILENAME
    echo "" >> $FILENAME
    wl-paste >> $FILENAME
    vi $FILENAME

    # echo $FINAL | wl-copy -n
    # wl-paste
end



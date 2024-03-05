#! /usr/bin/env fish


function bang

    set NAME $argv[1]
    set EXT ".fish"
    # set EXT "."$argv[2]
    
    set SHE "#! /usr/bin/env fish"
    set HE "# vim: ft=fish.cfg"
    set NL1 \n
    set NL2 \n\n
    set NL3 \n\n\n

    set BANG "function $NAME"$NL1"end"

    # wtype $SHE
    keyd input '#'
    keyd input '! /usr/bin/env fish'
    exit

    # set COPY wl-copy

    # echo "$SHE$NL1$HE$NL2$NL1$BANG" | $COPY

    # wl-paste -n >> "$NAME$EXT"
end


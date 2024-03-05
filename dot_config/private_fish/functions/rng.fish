function rng --wraps rng --description ' rng <FROM>:<TO> <[FILE]'

    clear -x

    # vars
    set ARG $argv
    set SIZE_ARG (count $argv)
    dunstify -r 100 "$ARG"
    dunstify -r 101 "$SIZE_ARG"

    set FROM $ARG[1]
    set TO $ARG[2]
    set FILE $ARG[3]

    switch "$SIZE_ARG"

        case 0
            echo "rng: command required an argument" \n
            echo "Usage:"\v"rng <FROM>:<TO> <[FILE]"
            return 121

        case 1
            set LINES 'command rng 1:-1 < "$ARG[1]"'

        case 2
            set LINES 'command rng $ARG[1] < "$ARG[2]"'

        case 3
            set LINES 'command rng $ARG[1]:$ARG[2] < "$ARG[3]"'
    end

    if test -z $FILE
        eval $LINES | bat -
    else
        eval $LINES | bat - --file-name $FILE
    end


end

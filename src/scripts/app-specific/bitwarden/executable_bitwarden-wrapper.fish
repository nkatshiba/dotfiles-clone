#! /usr/bin/env fish

function bitwarden-wrapper --wraps rbw --description 'alias bitwarden-wrapper=rbw'

    clear -x

    function query
        set -l PROMPT_STR "choice> "
        set CHOICE (echo -e "(1). Password\n(2). Username" | tofi -c ~/.config/tofi/small --prompt-text "Option: ")

            if test -z "$CHOICE"
                set CHOICE "choice: NONE"
            end


            switch "$CHOICE"
                case "(1). Password"
                    echo "PASSWORD"
                case "(2). Username"
                    echo "USERNAME"
                case "*"
                    echo "PASSWORD"

            end

    end



    set ITEM (rbw list | tofi -c ~/.config/tofi/small --prompt-text "Site: ")
    echo "["$ITEM"]"



    echo ""
    rbw get --full "$ITEM"

    echo ""
    echo "# ***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***"
    echo ""

    echo "(1). [PASSWORD]"
    echo "(2). [USERNAME]"


    set FULL $(rbw get --full "$ITEM")

    echo $FULL | while read -l -d ' ' LINE
    set ITEMS (string split " " $LINE)
    end

    set USERNAME $ITEMS[1]
    set PASSWORD $ITEMS[3]

    echo ""
    set FIELD (query)

    hyprctl notify -1 2000 "rgb(c44269)" "$FIELD"

    echo ""
    echo "# ***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***"
    echo ""

    echo "["$ITEM"]"

    switch "$FIELD"

        case "USERNAME"
            echo "USERNAME:"
            set UN (rbw get -f $FIELD $ITEM)
            set UN (string split " " $UN)
            echo $UN[2] | wl-copy -n

            hyprctl notify -1 2000 "rgb(c44269)" "$UN[2]"
            wl-paste

        case "PASSWORD"
            echo "PASSWORD:"
            set PW (rbw get -f $FIELD $ITEM)
            echo $PW | wl-copy -n
            hyprctl notify -1 2000 "rgb(c44269)" "$PW"

    end

end

bitwarden-wrapper $argv
exit

function bitwarden-wrapper --wraps rbw --description 'alias bitwarden-wrapper=rbw'

    clear -x

    function query
        set -l PROMPT_STR "choice> "
        while read -l CHOICE --prompt-str="$PROMPT_STR"
            or return 1 # if the read was aborted with ctrl-c/ctrl-d

            if test -z "$CHOICE"
                set CHOICE "choice: NONE"
            end

            switch "$CHOICE"
                case 1
                    echo PASSWORD
                case 2
                    echo USERNAME
                case "*"
                    echo PASSWORD

            end

            return 0
        end
    end



    set ITEM (rbw list | tofi -c ~/.config/tofi/small)
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

    echo ""
    echo "# ***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***"
    echo ""

    echo "["$ITEM"]"

    switch "$FIELD"

        case USERNAME
            echo "USERNAME:"
            set UN (rbw get -f $FIELD $ITEM)
            set UN (string split " " $UN)
            echo $UN[2] | wl-copy -n
            wl-paste

        case PASSWORD
            echo "PASSWORD:"
            set PW (rbw get -f $FIELD $ITEM)
            echo $PW | wl-copy -n
            wl-paste

    end

end

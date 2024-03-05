function send
    set PARAM $argv[1]


    switch $PARAM
        case -h
            echo "send [STR] [CATEGORY] [DURATION]"
        case '*'
            set STR $argv[1]
            set CAT $argv[2]
            set DURATION $argv[3]
            set PRIORITY low

            notify-send -u $PRIORITY -t $DURATION "$CAT" "$STR"
    end
end

function url

    # # Arg
    # set URL $argv
    # # echo "old> $URL"
    # echo -e "PRE> \v$URL"
    #
    # # Remove and store the protocol
    # set PROT (string match -r '^(http[s]?:\/\/)' -- $URL)[1]
    #
    # # Remove and store rest of the url (URL-PROTOCOL)
    # set REST (string replace $PROT "" $URL)
    #
    # set ADR (string split --max 1 "/" $REST)[1]
    # # set SPLIT2 (string split --max 1 "/" $REST)[2]
    # # echo $SPLIT
    # # echo $SPLIT2
    #
    # set POST (string replace -r '^www\.' '' -- $ADR)
    # echo -e "POST> \v$POST"

    #####################################################################################

    # Arg
    # set URL $argv
    $HOME/src/scripts/app-specific/cliphist/cliphist_list_fzf.fish
    set URL (wl-paste)
    # echo "old> $URL"

    # Remove and store the protocol
    set PROT (string match -r '^(http[s]?:\/\/)' -- $URL)[1]

    # Remove and store rest of the url (URL-PROTOCOL)
    set REST (string replace $PROT "" $URL)

    set ADR (string split --max 1 "/" $REST)[1]
    # set SPLIT2 (string split --max 1 "/" $REST)[2]
    # echo $SPLIT
    # echo $SPLIT2

    set POST (string replace -r '^www\.' '' -- $ADR)

    echo "PRE>"
    echo ""
    echo -e "$URL"

    echo ""
    echo -e "POST> \n$PROT$POST/"
    echo ""
end

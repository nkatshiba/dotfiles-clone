#! /usr/bin/env fish

# bw
# source $HOME/.BW_SESSION.fish

set OFFSET 8

function div_by_len
    set STR_LEN (string length "$argv[1]")
    # set OFFSET $argv[2]
    echo (string repeat -n (math $STR_LEN + $OFFSET) "*")
end


function get_info_from_search
    set SEARCH $argv

    set BW (bw list items --search $SEARCH)
    set NAME (echo $BW | jq -r '.[] | .name')
    set NAME (string upper $NAME)
    set PRE_POST (string repeat -n (math $OFFSET / 2 - 1) "*")

    div_by_len $NAME
    echo $PRE_POST $NAME $PRE_POST
    div_by_len $NAME
    echo ""

    # FULL
    echo $BW | jq '.[] | {name: .name, uri: .login.uris[0].uri, username: .login.username}'
    # echo $BW | jq '.[] | {name: .name, uri: .login.uris[0].uri, username: .login.username, password: .login.password}'

    echo ""

    # SPECIFIC
    # set OBJECTS (echo $BW | jq -r '.[]')
    # echo $OBJECTS

    set NAME (echo $BW | jq -r '.[] | .name')
    # echo $NAME

    set USERNAME (echo $BW | jq -r '.[] | .login.username')
    # echo $USERNAME

    set PASSWORD (echo $BW | jq -r '.[] | .login.password')
    echo $PASSWORD | kitten clipboard --wait-for-completion /dev/stdin

    set URI (echo $BW | jq -r '.[] | .login.uris[0].uri')
    # echo $URI
end


clear -x

# Search query
set SEARCH $argv

# query length
set LEN_SEARCH (string length "$SEARCH")

# get list of items/names 
set TOFI_CFG "$HOME/.config/tofi/tofi-bw"
set TOFI_PROMPT "Site / Item> "

set NAMES (bw list items | jq -r '.[] | .name' | tofi --prompt-text $TOFI_PROMPT -c $TOFI_CFG)
# echo $NAMES

get_info_from_search "$NAMES"

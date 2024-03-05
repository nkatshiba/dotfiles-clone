function nbl --wraps 'nb ls' --description 'alias nbl = nb ls && clear'
    clear -x
    set ARG $argv
    if test -z $ARG

    else
        # set ARG (string replace -r "/" "" $ARG)
        set ARG $ARG"/"
    end

    command nb ls $ARG

end

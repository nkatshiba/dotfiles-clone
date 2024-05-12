function mlvs
    set DIV '***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***'
    set NL '\n'

    echo -e $NL
    echo -e $DIV
    mullvad status
    echo -e $DIV
    echo -e $NL
end

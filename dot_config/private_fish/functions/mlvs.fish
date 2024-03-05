function mlvs
    set DIV '***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***'
    set NL '\n'

    echo -e $NL
    echo -e $DIV
    mullvad status -l
    echo -e $DIV
    echo -e $NL
end

function ya --wraps yazi --description 'alias ya=yazi'

    ### execute ya from different terminals
    # alacritty -e fish -c ya
    # foot fish -c ya

    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi --cwd-file="$tmp" $argv
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

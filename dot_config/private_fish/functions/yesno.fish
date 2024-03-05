function yesno -w 'gum choose' -a HEADER -d 'gum choose --header=[HEADER] "YES" "NO"'

    switch (gum choose --header="$HEADER" "YES" "NO")
        case YES
            set OPT 0
        case NO
            set OPT 1
    end

    echo $OPT
end

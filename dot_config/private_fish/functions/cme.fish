function cme -a FILE -w 'chezmoi edit' -d "Chezmoi edit [FILE] && chezmoi add [FILE] if exit status = 0"
    
    vi $argv[(count $argv)]

    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                chezmoi add $argv[(count $argv)]
                notify-send -t 5000 -r 000 -h string:bgcolor:"#020202" -h string:fgcolor:"#905CEB" -h string:frcolor:"#C5ABEA" "[CME & CMA]" "$(echo $argv[(count $argv)])"
                return
        end
    end
end

function ips
    set IPS $HOME/me/.ips.txt
    # bat $IPS | while read -l adr
    # # echo $adr
    # # end

    set -g IP (bat $IPS | gum filter)



    function rm_hash
        set split_ip (string split " " $IP)
        set final_ip $split_ip[1]
        echo $final_ip
    end

    rm_hash

end

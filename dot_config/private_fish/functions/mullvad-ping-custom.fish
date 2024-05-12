function mullvad-ping-custom -w mullvad-ping
    set COUNTRIES se dk no fi nl lv de

    for country in $COUNTRIES
        echo "Location: $country"
        mullvad-ping --country $country --type wireguard --top 0
        echo ""
    end

end

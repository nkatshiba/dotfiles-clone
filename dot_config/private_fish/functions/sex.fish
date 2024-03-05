function sex
    nb use .6
    set NB_CUR $(nb nb current)
    set DIR ~/docker/jellyfin/media/cowabonga

    cd $DIR 

    nb list

    echo ""
    echo "current nb> .6"
    eza --tree --level 3

end

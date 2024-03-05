function cowabonga
    clear -x

    set DATA_DIR $HOME/docker/jellyfin/media/cowabonga
    
    jj $DATA_DIR

    clear -x 

    pwdcp
    
    # set ONLY_CD (gum confirm "Only cd?" --default=true --affirmative "yes" --negative "no" && echo "1" || echo "0")
    # echo $ONLY_CD
    #
    # if test $ONLY_CD = "1"
    #     # $DATA
    # else
    #     set DIR (eza -screated --ignore-glob *nohup.out* | fzf --tac)
    #     cd $DIR
    #     kitten @ launch --type os-window --cwd "$PWD" --title "cowabonga-mpv" nohup mpv -- *; disown
    # end


    echo ""
    ls
    echo ""
end

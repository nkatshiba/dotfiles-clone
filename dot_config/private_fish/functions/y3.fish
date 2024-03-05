# function _GET_INPUT -a HEADER PLACEHOLDER
#     set RETURN_STR (gum input --header "$HEADER" --placeholder "$PLACEHOLDER")
#     echo $RETURN_STR
# end

function _CD_AND_WELCOME -a DEST
    cd $DEST
    set 3PATH "../$(realpath --relative-to ../../../ $PWD)/"
    gum style --background="#020202" --border-background="#020202" --foreground="#bd9e94" --border-foreground="#3A1008" --border double --align center --width 50 --bold --italic "**** [Y2] ****"
    gum style --background="#020202" --border-background="#020202" --foreground="#3A1008" --border-foreground="#bd9e94" --border double --align center --width 50 --bold --italic "$3PATH"
    echo $TITLE
    echo $CUR_PWD
end


function _SUMMARIZE

    echo ""
    _SEPARATOR
    echo -e "# NUM OF CONCURRENT DLDS:"
    echo -e "# $NUM"
    echo ""
    echo -e "URL:"
    echo -e "# $URL"
    echo ""
    echo -e "DIRECTORY"
    echo -e "# $DIR_NAME"
    echo ""
    echo -e "FILE NAME:"
    echo -e "# $DEST_FILE"
    _SEPARATOR
    echo ""

end

function _SEPARATOR

  set NUM_COLS (tput cols)
  set -l SEP_COL (set_color BD9E94)
  # set -l SEPARATOR "------------------------------------------------------------"
  set -l SEPARATOR_SYM "-"
  set -l SEPARATOR $SEP_COL$SEPARATOR_SYM
  # # set -l SEPARATOR_STR (string repeat -n $NUM_COLS $SEPARATOR)
  # # echo $SEPARATOR_STR
  string repeat -n $NUM_COLS $SEPARATOR

end

function _BYE -a DIR
    clear -x 
    set 3PATH "../$(realpath --relative-to ../../../ $PWD)/"
    gum style --background="#020202" --border-background="#020202" --foreground="#630400" --border-foreground="#bd9e94" --border double --align center --width 50 --bold --italic "**** [/ Y2] ****"
    echo $CUR_PWD
    du ./ -sh


end

function _CLONE
    
    kitten @ launch --type os-window --cwd="$HOME/docker/jellyfin/media/cowabonga/NEW_DIR"

end

function y3

    clear -x

    set DEST "$HOME/docker/jellyfin/media/cowabonga/NEW_DIR"
    _CD_AND_WELCOME $DEST

    # Prompt for the number of concurrent downloads
    # set -g NUM (_get_input "Number of concurrent downloads: " "8...")
    set -g NUM 10
    set -g TITLE (cliphist list | fzf --border-label "TITLE" --border bottom --prompt "TITLE> " | cliphist decode)
    set -g URL (cliphist list | fzf --border-label "URL" --border bottom --prompt "URL> " | cliphist decode)

    set -g DIR_NAME (string upper "$TITLE")
    set -g DIR_NAME (string replace -a " " "_" "$DIR_NAME")
    set -g DEST_FILE (string replace -a " " "" "$DIR_NAME.mp4")
    set -g DIR_NAME (string replace -a "_-_" "_" "$DIR_NAME")

    mkcd $DIR_NAME
    # cd (echo (string upper "$DIR_NAME"))
    _SUMMARIZE

    # Execute the yt-dlp command with user inputs

    # run
    yt-dlp --downloader axel --downloader-args "-n $NUM" "$URL" -o $DEST_FILE
    # yt-dlp "$URL" -o $DEST_FILE

    # post run
    notify-send -t 2500 -r 364 -c clock-large "[XX]" "DONE"



    # bye
    _BYE $DIR_NAME
    # _CLONE
    hyprctl dispatch exec mpv $DEST_FILE

end


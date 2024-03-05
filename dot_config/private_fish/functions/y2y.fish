function _get_input -a HEADER PLACEHOLDER
    set RETURN_STR (gum input --header "$HEADER" --placeholder "$PLACEHOLDER")
    echo $RETURN_STR
end

function _cd_and_welcome -a DEST
    cd $DEST
    set 3PATH "../$(realpath --relative-to ../../../ $PWD)/"
    gum style --background="#020202" --border-background="#020202" --foreground="#8B59E3" --border-foreground="#b1e359" --border double --align center --width 50 --bold --italic "**** [Y2] ****"
    gum style --background="#020202" --border-background="#020202" --foreground="#b1e359" --border-foreground="#8B59E3" --border double --align center --width 50 --bold --italic "$3PATH"
    echo $TITLE
    echo $CUR_PWD
end

function _summarize

    echo ""
    echo -e "# NUM OF CONCURRENT DLDS:"
    echo -e "> $NUM"
    echo ""
    echo -e "# URL:"
    echo -e "> $URL"
    echo ""
    echo -e "# DIRECTORY"
    echo -e "> $DIR_NAME"
    echo ""
    echo -e "# FILE NAME:"
    echo -e "$DEST_FILE"

end

function GET_HISTORY

end

function y2

    clear -x
    set DEST "$HOME/docker/jellyfin/media/cowabonga/NEW_DIR"
    _cd_and_welcome $DEST

    set HISTORY (cliphist list | head -2)

    set H1 $HISTORY[1]
    set URL (string sub -s 7 $H1)

    set H2 $HISTORY[2]
    set TITLE (string sub -s 7 $H2)
    echo $TITLE

    set -g DIR_NAME (string upper "$TITLE")
    set -g DEST_FILE (string replace -a " " "-" "$DIR_NAME")
    set -g DEST_FILE (string replace -a " " "" "$DEST_FILE")
    set -g DEST_FILE (string replace -a "_-_" "_" "$DEST_FILE.mp4")
    echo $DEST_FILE

    # mkcd $DIR_NAME

    # Execute the yt-dlp command with user inputs
    # yt-dlp --downloader axel --downloader-args "-n 8" "$URL" -o $DEST_FILE

end


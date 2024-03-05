function fif -a file -w fish_indent -d "fish_indent [FILE] and write to [FILE] && wlc"

    set FILE (basename $file)
    set 3PATH realpath --relative-to ../../ $FILE

    set TMP_DIR "$HOME/tmp/fish_indent/"
    set TMP_NAME (path change-extension '.fish' $FILE)
    set TMP_FILE "$TMP_DIR$TMP_NAME"

    if test -f $FILE
        dunstify -t 3500 "[FISH_INDENT3D]" "$FILE" 3PATH
    else
        dunstify -t 3500 "[FISH_INDENT3D]" "$FILE is not a regular file!"
        return
    end

    div_with_desc "*" "[FISH_INDENT3D]" 3535FF

    bat $FILE | fish_indent >$TMP_FILE

    difft $FILE $TMP_FILE


    if test (yesno "Save changes?") -eq 0
        echo "Saving changes: $TMP_FILE > $FILE"
        bat $TMP_FILE >$FILE
    else
        echo "No changes done to $FILE"
    end


end

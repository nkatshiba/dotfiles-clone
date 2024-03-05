set -g DIV "*********************************************************************"
set -g DIV2 _____________________________________________________________________

function NEWLINE
    echo ""
end


function query
    set -l PROMPT_STR "$argv> "
    while read -l INPUT --prompt-str="$PROMPT_STR"
        or return 1 # if the read was aborted with ctrl-c/ctrl-d
        echo $INPUT
        return 0
    end
end

function confirm
    echo $DIV
    # "FILE NAME:"\t"$OUTPUT_FILE_NAME"
    wl-paste | bat --map-syntax '*.fish:Fish' --file-name "$OUTPUT_FILE_NAME"
    echo $DIV

    set -l PROMPT_STR "ABBREVIATIONS < $BASE_NAME_Q> "
    while read -l --nchars 1 YESNO --prompt-str="$PROMPT_STR"
        or return 1 # if the read was aborted with ctrl-c/ctrl-d

        switch $YESNO
            case y
                set OLD_PATH $PWD
                clear
                cd $ABBA
                paste_into_file
                echo $OLD_PATH
                chezmoi add $OUTPUT_FILE_NAME
                bat $OUTPUT_FILE_NAME

                return 0
            case n
                echo "exited!"
                return 1
        end

    end
end

# function add_to_chezmoi
#     echo $DIV2
#
#     set -l PROMPT_STR "CHEZMOI < $BASE_NAME_Q"
#     while read -l --nchars 1 YESNO --prompt-str="$PROMPT_STR"
#           or return 1 # if the read was aborted with ctrl-c/ctrl-d
#
#         switch $YESNO
#             case 'y'
#                 # chezmoi add $OUTPUT_FILE_NAME
#                 "CHEZMOI < $BASE_NAME_COLOR"
#                 return 0
#             case 'n'
#                 echo "exited!"
#                 return 1
#         end
#
#     end
# end

function paste_into_file
    echo "# $FILE_NAME" >$OUTPUT_FILE_NAME
    wl-paste >>$OUTPUT_FILE_NAME
end

function abbas --wraps abbr --description 'new abbreviation'


    # echo $HASH_DESCRIPTION >> $FILE
    set -g FILE_NAME (query "filename")
    set -g ABBA $HOME/.config/fish/abbreviations/
    set -g OUTPUT_FILE_NAME "$ABBA$FILE_NAME.fish"
    set -g BASE_NAME (basename $OUTPUT_FILE_NAME)
    set -g BASE_NAME_COLOR $(set_color fdb777;basename $OUTPUT_FILE_NAME;set_color normal;echo "--- (y/n)? >")
    set -g BASE_NAME_Q "$BASE_NAME_COLOR"

    clear

    NEWLINE
    confirm



end

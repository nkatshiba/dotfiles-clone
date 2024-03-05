#! /usr/bin/env fish
# vim: ft=fish.cfg


set -g DIV "************************************************************"

function NEWLINE
    echo ""
end


function query
    set -l PROMPT_STR "$argv> "
    while read -l INPUT --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d

        if test -z "$INPUT"
            set INPUT "_"
        end
            echo "$INPUT"
        return 0
    end
end

function title_format
    set raw_title "$argv"
    set score_title (string replace -a " " "_" $raw_title)
    set double_score_title (string replace -a "_-_" "-" $score_title)
    set lower_title (string lower $double_score_title)
    set output_title $lower_title
    echo $output_title


end

function confirm
    echo $DIV
    echo "title:"\t$TITLE
    echo "comment:"\t$COMMENT
    echo "content:"\t$CONTENT
    echo $DIV

    set -l PROMPT_STR "add note/file? (y/n)> "
    while read -l --nchars 1 YESNO --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d

        switch $YESNO
            case 'y'
                nb add -f $TITLE -c $CONTENT -t $COMMENT
                nb edit $TITLE
                return 0
            case 'n'
                echo "exited!"
                return 1
        end

    end
end

function list_notebooks

    echo (nb nb list) | while read --list nbs
    echo "<"$nbs"> |"
    end
    echo $DIV
end

function nb_add_helper --wraps 'nb add' --description 'nb add -f [FILENAME] -c [CONTENT] -t [COMMENT]'

    clear -x

    list_notebooks
    # set NB_IN_USE (query "which nb")
    # set -g NB "$NB_IN_USE"
    set RAW_TITLE (query "title")
    set TITLE_PRE (title_format $RAW_TITLE)
    set -g TITLE $TITLE_PRE".md"

    # set -g COMMENT (query "tag")
    set -g COMMENT $TITLE_PRE

    set -g CONTENT (query "content")
    # nb nb use $NB
    confirm
    nb list
end

nb_add_helper

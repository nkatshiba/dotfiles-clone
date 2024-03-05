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
    echo "nb:"\t$NB
    echo "title:"\t$TITLE
    echo "url:"\t$URL
    echo $DIV

    set -l PROMPT_STR "add bm? (y/n)> "
    while read -l --nchars 1 YESNO --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d

        switch $YESNO
            case 'y'
                nb bm add $NB $URL --title $TITLE
                # nb bm folder/ url --title title

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

function nb_bm_add_helper --wraps 'nb bm add' --description 'nb bookmark add :streak [NB:] [URL] [TITLE] '
    clear -x

    list_notebooks
    # set NB_IN_USE (query "which nb")
    # set -g NB "$NB_IN_USE"
    set -g URL (query "url")
    set NAME (query "title")
    set -g TITLE (title_format $NAME)
    # nb nb use $NB
    confirm
    nb list
end

nb_bm_add_helper

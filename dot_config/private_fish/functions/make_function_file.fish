#! /usr/bin/env fish

# set DIR_1 "$HOME/.config/fish/functions"
# set DIR_2 "$HOME/src/scripts/_new"

function _bang
    get_and_set_file_info
    
    

#     set SHE "#! /usr/bin/env fish"
#     set NL \n\n
#     set BANG "$NL function $argv $NL end"
#
#     set COPY wl-copy
#
#     echo $SHE$BANG | $COPY
# end
#
# bang $argv
# wl-paste -n
end

function query_mode
    set -l PROMPT_STR $argv
    while read --nchars 1 -l MODE --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d
        switch $MODE
            case 1
                echo $DIR_1
                # We break out of the while and go on with the function
                break
            case 2
                # We return from the function without printing
                echo $DIR_2

                break
            case '*'
                # We go through the while loop and ask again
                echo Not valid input
                continue
        end
    end
end


function query_input
    set -l PROMPT_STR $argv

    while read -l OPTION --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d
        break

    end

    echo $OPTION
end


function get_and_set_file_info

    set NAME "$(query_input 'name> ')"
    set EXT ".$(query_input 'ext> ')"
    set MODE "$(query_mode '[(1). ~/../fish/functions | (2). ~/../scripts/_new] > ')"


    
end


# function remove_file_extension
#     set target_file $argv
#     set FILE_WITH_EXT "dAot-hej.fish"
#     # set -l extension (path extension $FILEPATH)
#     set -l FILE_NO_EXT (path change-extension '' "$FILE_WITH_EXT")
#     echo $FILE_WITH_EXT
#     echo $FILE_NO_EXT
# end

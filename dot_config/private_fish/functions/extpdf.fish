function extpdf --wraps pdftk --description 'alias extpdf=pdftk'


    function query
        set -l PROMPT_STR "$argv: "
        while read -l INPUT --prompt-str="$PROMPT_STR"
              or return 1 # if the read was aborted with ctrl-c/ctrl-d

            if test -z "$INPUT"
                set INPUT "NONE"
            end
                echo "$INPUT"
            return 0
        end
    end

    # query
    set PDF (fd --extension pdf . | gum filter)
    # set PDF (query "pdf")
    set START (query "page [START]")
    set END (query "page [END]")
    set NAME (query "output name")
    set NAME_EXT $NAME".pdf"



    pdftk $PDF cat $START-$END output $NAME_EXT

    open $NAME_EXT

end

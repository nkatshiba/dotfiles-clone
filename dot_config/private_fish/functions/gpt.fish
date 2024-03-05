function gpt
    set OPT $argv

    switch "$OPT"

        case could
            set -f OUT "could you refactor this code and structure it into functions to reduce redundency and increase readability as well as adhering to python coding conventions / python best practices"

        case kan
            set -f OUT "kan du korrigera bifogade texten med avseende på meningsuppbyggnad, stavning, grammatik osv:"
        case plot
            set -f OUT "are there any way to make the plots more stylish, cleaner, more informative as well as more professional?"
    end

    # cp
    echo $OUT | wl-copy -n

    # notify
    dunstify "$OUT > wlc"


    # abbr -a couldyou 'echo could you refactor this code and structure it into functions to reduce redundency and increase readability as well as adhering to python coding conventions / python best practices | wl-copy -n'
    # abbr -a kandu 'echo "kan du korrigera bifogade texten med avseende på meningsuppbyggnad, stavning, grammatik osv:" | wl-copy -n'

end

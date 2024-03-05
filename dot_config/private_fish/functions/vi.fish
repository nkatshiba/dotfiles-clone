function vi --wraps nvim --description 'alias vi=nvim'

    # if test -n "$argv"
    #     nvim "$argv"
    # else
    #     set files (fd -t f -e py -e m -e txt -e rs -e md -e c -e h -e cpp -e java -e js -e html -e css -e json -e xml -e sh -e r -e sql -e csv -e toml -e conf -e fish -e yml -1 500)
    #     if test $status -eq 0
    #         nvim (gum filter --fuzzy $files)
    #     else
    #         echo "fd command failed"
    #         return 1
    #     end
    # end

    nvim $argv
end




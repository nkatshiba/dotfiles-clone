function cpcat
    set CMD $argv
    switch $CMD
    case '*vi*'
        # function vi --wraps nvim --description 'alias vi=nvim'
        #     nvim $argv
        # end
        echo 111
    case 'a'
        dunstify "a"
     
    end
end

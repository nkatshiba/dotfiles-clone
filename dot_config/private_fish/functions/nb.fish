function nb --wraps nb --description 'alias nb = nb && clear'
    clear -x
    command nb $argv
end

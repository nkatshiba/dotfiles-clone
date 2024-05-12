function nb --wraps nb --description 'alias nb = nb && clear'
    clear -x
    # cd $HOME/.nb
    command nb $argv
end

function rmfzf -w 'rm --interactive'
    set FILE (eza --classify --sort modified -1 | fzf --tac)
    rm --interactive $FILE
end

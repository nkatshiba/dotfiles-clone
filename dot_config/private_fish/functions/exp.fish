function exp
    set APP (expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort --reverse | fzf)
    echo (echo $APP | string replace -a \t " " -- | string split " " --)[3]
end

function man --wraps man --description 'alias man=man <cmd> | page'
    # command man $argv | page
    if test -z "$argv"
        echo "Usage: man <command>" >&2
        return 1
    end

    if command man -w $argv[1] >/dev/null 2>&1
        command man $argv | page
    else
        echo "No manual entry for $argv[1]" >&2
        return 1
    end
end

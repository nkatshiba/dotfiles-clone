function poetry-fzf
    set PY_FILE (eza --classify --ignore-glob "__*" --sort modified *.py | fzf --tac)
    echo "Running $PY_FILE.."
    poetry run python $PY_FILE
end

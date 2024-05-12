function pylsp

    set WD $PWD
    cd $WD

    jq --null-input --arg venv ".venv" --arg venvPath "$PWD" '{ "venv": $venv, "venvPath": $venvPath }' > pyrightconfig.json

end

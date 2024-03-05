function fdc -w 'fd' -d 'alias fdc=fd --hidden --no-ignore .config'

    cd ~/.config
    fd --hidden --no-ignore "$argv"

end

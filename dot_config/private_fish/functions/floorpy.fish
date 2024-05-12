function floorpy
    set URL "$argv"
    set PREFIX "https://"
    hyprctl dispatch exec floorp -- --new-window "$PREFIX$URL"
end

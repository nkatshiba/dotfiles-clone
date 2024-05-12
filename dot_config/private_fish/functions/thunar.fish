function thunar -w thunar
    hyprctl dispatch exec thunar -- $PWD $argv
end

function vimkat-movies
    set STR /home/kskat/docker/jelly/media/movies
    hyprctl dispatch exec "sleep 1 && wtype $STR"
    exit
end

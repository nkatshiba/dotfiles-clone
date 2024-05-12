function opendlv
    set COMPOSE_DIR $HOME/docker/opendlv-desktop
    z $COMPOSE_DIR

    docker compose down && docker compose up -d && hyprctl dispatch exec $HOME/.local/nativefier/opendlv-linux-x64/opendlv

    kitten @ close-window --self

    
end

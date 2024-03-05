function cls -w 'clear' -d 'alias cls = clear && eza --classify --long --no-permissions --no-user --time modified --total-size'
    clear -x
    eza --classify --long --no-permissions --no-user --time modified --no-filesize
end

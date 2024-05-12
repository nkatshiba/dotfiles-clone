function hyprbinds
    set BINDS $HOME/.config/hypr/conf.d/binds.conf
    vi $BINDS
    chezmoi add $BINDS
    chezmoi diff
end

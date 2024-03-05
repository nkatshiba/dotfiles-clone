function hyprwiki

    set WINDOWRULES https://wiki.hyprland.org/Configuring/Window-Rules/
    set WORKSPACES https://wiki.hyprland.org/Configuring/Workspace-Rules/
    set MONITORS https://wiki.hyprland.org/Configuring/Monitors/
    set DISPATCHERS https://wiki.hyprland.org/Configuring/Dispatchers/
    set HYPRCTL https://wiki.hyprland.org/Configuring/Using-hyprctl/
    set BINDS https://wiki.hyprland.org/Configuring/Binds/
    set SYNTAX https://wiki.hyprland.org/Configuring/Keywords/
    set VARIABLES https://wiki.hyprland.org/Configuring/Variables/
    set MASTER_LAYOUT https://wiki.hyprland.org/Configuring/Master-Layout/
    set DWINDLE_LAYOUT https://wiki.hyprland.org/Configuring/Dwindle-Layout/

    set PAGES $WINDOWRULES $WORKSPACES $DISPATCHERS $MASTER_LAYOUT $DWINDLE_LAYOUT $HYPRCTL
    set BASE https://wiki.hyprland.org/Configuring/

    set PAGES_FZF (string replace -a "$BASE" "" "$PAGES") 
    set PAGES_FZF_SPLIT (string split " " $PAGES_FZF)
    set SELECT (for PAGE in $PAGES_FZF_SPLIT; echo $PAGE; end | fzf)
    set URL "$BASE$SELECT"

    open_in_qute $URL

end



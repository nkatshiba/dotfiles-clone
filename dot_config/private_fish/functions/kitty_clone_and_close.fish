# vim: set filetype=fish.cfg :

function kitty_clone_and_close

    # kitty -d $PWD &; disown
    # kitten @ close-window
    # kitty +kitten broadcast "hej"

    # set WIN_ID (kitten @ new-window --window-type os --cwd=current 'fish -c pwd')
    set WIN_ID (kitten @ launch --type os-window --cwd=current)

    hyprctl notify -1 1000 "rgb(ff1ea3)" "$WIN_ID @ $PWD"

    # kitten @ launch --match id:-1 pwd
    kitten @ close-window --self

end

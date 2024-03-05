# vim: set filetype=fish.cfg :
function vifm --wraps vifm --description 'vifm wezterm wrapper'
    wezterm start --always-new-process --cwd $PWD vifm &
    disown
    exit
end

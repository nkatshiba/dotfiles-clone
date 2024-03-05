function outlook -w owa-desktop
    hyprctl dispatch exec owa-desktop
    kitten @ close-window --self
end

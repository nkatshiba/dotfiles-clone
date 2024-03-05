function evo
    kitten @ launch --type os-window --title evolution fish -c 'hyprctl dispatch exec evolution'
    kitten @ close-window --self
end

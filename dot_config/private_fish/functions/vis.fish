function vis -w 'vis'
    kitten @ launch --type os-window --hold --title cli-visualizer fish -c "command vis $argv"
    kitten @ close-window --self
end

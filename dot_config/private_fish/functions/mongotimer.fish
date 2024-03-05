function mongotimer -w 'mongotimer'
    hyprctl dispatch exec kitty -- '--override font_size=3 --title "mongo" mongotimer' $argv
end

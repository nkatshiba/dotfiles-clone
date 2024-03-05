#! /usr/bin/env fish

# set I (kitten @ launch --type os-window --hold --title app-title fish -c 'input hej')
# echo $I
# set NAME (gum input)
set NAME (fish -c 'input "COPY-URL"')

notify-send -r 100 -c chromium "[COPY-URL]" "$NAME"

# sleep 1

# movefocus
hyprctl dispatch focuswindow thorium-browser

# vars
set DATA_D $HOME/src/scripts/app-specific/wl-clipboard/chromium
set JSON_F $DATA_D/saved_url_list.json
set DATE (date '+%Y-%m-%d')
set TIME (date '+%H:%M:%S')

cd $DATA_D

# select
wtype -M ctrl -k l -m ctrl
sleep 0.1

# copy
wtype -M ctrl -k c -m ctrl
sleep 0.5

# store url
set URL "$(wl-paste)"

# Check if JSON file exists and create it if not
if not test -f $JSON_F
    echo "[]" > $JSON_F
end

# Add new entry to JSON file
jq --arg date "$DATE" --arg time "$TIME" --arg name "$NAME" --arg url "$URL" \
   '. += [{"date": $date, "time": $time, "name": $name, "url": $url}]' \
   $JSON_F > temp.json && mv temp.json $JSON_F

# notify
notify-send -r 100 -c chromium "[COPY-URL]" "$(cat saved_url_list.json | jq '.[]' | jq '.url' | tail --lines 1)"

kitten @ launch --type os-window --hold --cwd $DATA_D --title app-title fish -c "cat saved_url_list.json | jq '.[]'"
################################################################################################3
kitten @ close-window --self

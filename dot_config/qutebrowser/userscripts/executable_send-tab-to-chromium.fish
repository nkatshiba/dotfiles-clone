#! /usr/bin/env fish

# yank url
set URL $QUTE_URL

# sleep 2
# hyprctl dispatch focuswindow thorium-browser
hyprctl dispatch exec thorium-browser -- $URL

# wtype -k d

# new tab
# wtype -M ctrl -k t -m ctrl
# sleep 1
#
# # paste
# wtype -M ctrl -k v -m ctrl

# # store url
# set URL "$(wl-paste)"
#
# # Check if JSON file exists and create it if not
# if not test -f $JSON_F
#     echo "[]" > $JSON_F
# end
#
# # Add new entry to JSON file
# jq --arg date "$DATE" --arg time "$TIME" --arg name "$NAME" --arg url "$URL" \
#    '. += [{"date": $date, "time": $time, "name": $name, "url": $url}]' \
#    $JSON_F > temp.json && mv temp.json $JSON_F
#
# notify
notify-send -r 100 -c top-mid-960x50 "$URL"

################################################################################################3
# kitten @ launch --type os-window --hold --cwd $DATA_D --title app-title fish -c "cat saved_url_list.json | jq '.[]'"
# kitten @ close-window --self

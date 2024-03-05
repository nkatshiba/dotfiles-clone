#!/usr/bin/env fish

# Get LANGuage
set LANG $(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "keyd-virtual-keyboard") | .active_keymap' | cut -c 1-2 | tr 'A-Z' 'a-z')

switch $LANG
	case sw
		set LANG "Swedish"
		echo $LANG
	case en
		set LANG "American"
		echo $LANG
end


# Notify
notify-send  -c layout "$LANG"

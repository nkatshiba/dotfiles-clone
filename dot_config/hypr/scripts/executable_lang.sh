#!/usr/bin/env bash

icon="$HOME/.config/mako/icons/language.png"

# Get language
get_lang() {
	lang=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "keyd-virtual-keyboard") | .active_keymap' | cut -c 1-2 | tr 'A-Z' 'a-z')
	case $lang in
		sw)
			lang="Swedish"
			;;
		en)
			lang="American"
			;;
	esac
	echo $lang
}

# Notify
# notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$icon" "$(get_lang)"
notify-send -t 2500 -r 1232 -h string:bgcolor:"#020202" -h string:fgcolor:"#905CEB" -h string:frcolor:"#C5ABEA" "[LAYOUT]" "$(get_lang)"

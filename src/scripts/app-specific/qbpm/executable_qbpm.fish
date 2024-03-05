#! /usr/bin/env fish
# launch
hyprctl dispatch exec qbpm launch (command eza $QBPM_PROFILE_DIR | fzf)
# notify
notify-send -c mid "[FZF-QBPM]" "launching qbpm instance.."
# close
kitten @ close-window --self $DMENU

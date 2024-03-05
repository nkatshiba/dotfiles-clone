#! /usr/bin/env bash

function tmux_sessions()
{
    tmux list-session -F '#S'
}

TMUX_SESSION=$( (echo new; tmux_sessions) | (tofi -c $HOME/.config/tofi/tofi-tmux))

if [[ x"new" = x"${TMUX_SESSION}" ]]; then
    wezterm start --always-new-process --cwd $HOME -- tmux new-session -A -s "echo from_tofi; $SHELL"  &
elif [[ -z "${TMUX_SESSION}" ]]; then
    echo "Cancel"
else
    wezterm start --always-new-process --cwd $HOME -- tmux new-session -A -s "${TMUX_SESSION}" &
fi

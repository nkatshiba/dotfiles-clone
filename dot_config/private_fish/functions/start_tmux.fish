function start_tmux
    tmux kill-server
    tmuxinator start default
    tmux list-sessions
end

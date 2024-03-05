function muxed
    # Use -d to allow the rest of the function to run
    tmux new-session -d -s default_session
    tmux new-window -n w1
    # -d to prevent current window from changing
    tmux new-window -d -n w2
    tmux new-window -d -n w3
    tmux new-window -d -n w4
    # -d to detach any other client (which there shouldn't be,
    # since you just created the session).
    tmux attach-session -d -t default_session
end

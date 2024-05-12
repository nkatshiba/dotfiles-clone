function mpv-custom -w 'comamnd mpv' -d "Play video with mpv and detach from the term"
    set MOV "$argv"
    command mpv $MOV &
    disown
    # kitty @ close-window --self
end

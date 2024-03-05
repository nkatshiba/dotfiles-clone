if status --is-interactive
    function fish_user_key_bindings
        # bind \e 'clear -x; commandline -f repaint && eza -F && echo cls!'
        # bind \e 'clear; commandline -f repaint'
        bind \e 'printf "\e[H\e[22J" && commandline -f repaint'
        # bind \e 'clear; commandline -f repaint && eza -F && echo cls!'
    end
end

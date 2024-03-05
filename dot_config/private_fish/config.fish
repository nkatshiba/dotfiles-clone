if status is-interactive
    # source $HOME/.config/fish/abbreviations/*

    # abbreviations
    for file in ~/.config/fish/abbreviations/*
    source $file
    end

    ssh-key-reminder

end


## sys
# internal
# set -gx TERM wezterm
# set -gx TERM alacritty
set -gx TERM kitty
set -gx EDITOR nvim
set -gx SUDO_EDITOR nvim
set -gx BROWSER qutebrowser
set -Ux _JAVA_AWT_WM_NONREPARENTING 1

## shell
# fish
set -gx fish_help_browser qutebrowser --target window
# z 
set _ZO_ECHO 1

## wm
# wayland
set -gx XDG_SESSION_TYPE wayland
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux GDK_BACKEND wayland
# qt
set -Ux QT_SCALE_FACTOR 1
set -Ux QT_QPA_PLATFORM wayland
set -Ux QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -Ux QT_QPA_PLATFORMTHEME qt6ct  # qt5ct
set -Ux QT_AUTO_SCREEN_SCALE_FACTOR 1

# bemenu
set -Ux BEMENU_BACKEND wayland

# packages

# qutebrowser
set -Ux QUTE_CONFIG_DIR "$HOME/.config/qutebrowser/"
set -Ux QBPM_PROFILE_DIR "$HOME/.config/qutebrowser/qbpm_profiles"
set -gx QBPM_PROFILE_DIR "$HOME/.config/qutebrowser/qbpm_profiles"

# chezmoi
set -gx CHEZMOI_STR "Don't forget to add file to chezmoi :))"

# cheat
set -gx CHEAT_USE_FZF true

# skate/charm
# set -Ux CHARM_HOST 212.193.3.135
set -Ux CHARM_HOST https://charm.vimkat.com

# asdf
source ~/.asdf/asdf.fish

# bw
source $HOME/.BW_SESSION.fish

# mktemp
set -Ux TMPDIR $HOME/tmp

# bartib
set -Ux BARTIB_FILE $HOME/.BARTIB

# tmux
set -Ux fish_tmux_autostart false
# set -Ux fish_tmux_autostart true
set -Ux fish_tmux_autostart_once true
set -Ux fish_tmux_autoconnect true
set -Ux fish_tmux_fixterm true
set -Ux fish_tmux_fixterm_with_256color screen-256color
abbr -a muxc 'tmuxinator commands'

set -Ux fish_tmux_config $HOME/.config/tmux/tmux.conf
set -Ux fish_tmux_default_session_name "default"


# hydro
# ⦰ ⧁ ⧋ ⦱ ⦲ ⦵ ⦷ ⦼ ⦿ ⦿ ⧴ ⦔ ⦕ ⦂ ⧵ ⧺ ⧺ ⋧ ⋙ ≧ ℞ ⨯ ✗ ⹐ 🕂 ✚ # ▦ 𛲜 ✜ ⛌ ⛒ ⤫ ⤮ ❱ ❵ ⎰ ⎱ ⦄ ⦈ ⦊⦔ ⸉ ⸊⸧ ⁅ ≅ ≈ ≠ ≥ ≃ ≄ ≊ ≈ ≧ ⊵ ⋛ ⥵ ⩰ ⩾ ⪀ ⪈ ⪈ ⪚ ⪬ ⪭ ⪸ ⫒ → ≥ ≯ ≳ ≶ ≸ ⋗ ⋛ ⋧ ⏭ ♆ 𑿉  𔖸 𔒟 ⅟ 𔖩 ❆ ɲ ƴ ₰ ₶ ƒ ৵ ৸ ৷ ⛅ ☇ ☀ ♪ ᭦ ᭧ ᭦ ᭧ ᭴ ᭵'  # >⧜
# set -g hydro_symbol_prompt '≈'
set -g hydro_symbol_prompt 'Ø'
# set -g hydro_symbol_prompt '⧋'
# set -g hydro_symbol_prompt '#'

set -g fish_prompt_pwd_dir_length 3
# left
set -g hydro_color_pwd '#856185'
set -g hydro_color_prompt '#9a0d59'
# right
set -g hydro_color_git '#74dde3'
set -g hydro_color_error '#DA627D'
set -g hydro_color_duration '#e373a5'
set -g hydro_color_time 'fdb777'

set -Ux SHIORI_DIR $HOME/.shiori
# ⦰ ⧁ ⧋ ⦱ ⦲ ⦵ ⦷ ⦼ ⦿ ⦿ ⧴ ⦔ ⦕ ⦂ ⧵ ⧺ ⧺ ⋧ ⋙ ≧ ℞ ⨯ ✗ ⹐ 🕂 ✚ # ▦ 𛲜 ✜ ⛌ ⛒ ⤫ ⤮ ❱ ❵ ⎰ ⎱ ⦄ ⦈ ⦊⦔ ⸉ ⸊⸧ ⁅ ≅ ≈ ≠ ≥ ≃ ≄ ≊ ≈ ≧ ⊵ ⋛ ⥵ ⩰ ⩾ ⪀ ⪈ ⪈ ⪚ ⪬ ⪭ ⪸ ⫒ → ≥ ≯ ≳ ≶ ≸ ⋗ ⋛ ⋧ ⏭ ♆ 𑿉  𔖸 𔒟 ⅟ 𔖩 ❆ ɲ ƴ ₰ ₶ ƒ ৵ ৸ ৷ ⛅ ☇ ☀ ♪ ᭦ ᭧ ᭦ ᭧ ᭴ ᭵'  # >⧜

# Paths
set -gx PATH "$HOME/.local/bin/" $PATH
set -gx PATH "$HOME/.cargo/bin/" $PATH


# set -Ux PYTHON_KEYRING_BACKEND keyring.backends.null.Keyring poetry update

# .NET CLI / C#
complete -f -c dotnet -a "(dotnet complete (commandline -cp))"

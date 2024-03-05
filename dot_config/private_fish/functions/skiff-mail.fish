function skiff-mail
    hyprctl dispatch exec -- $HOME/.local/nativefier/skiff-mail-linux-x64/skiff-mail --enable-features=UseOzonePlatform --ozone-platform=wayland
end

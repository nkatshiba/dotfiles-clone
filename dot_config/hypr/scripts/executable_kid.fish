#! /bin/fish
function kid
    set PATH "$argv[1]"
    echo $PATH
    exec wezterm start --cwd $PATH
end


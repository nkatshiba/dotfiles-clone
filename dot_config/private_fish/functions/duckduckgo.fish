function duckduckgo
    set SEARCH_URL "https://duckduckgo.com/?q="
    set SEARCH_STR "$argv"
    set SEARCH "$SEARCH_URL$SEARCH_STR"

    kitty kitten @ launch --type os-window --title "qpwd" qutebrowser $SEARCH
    
end

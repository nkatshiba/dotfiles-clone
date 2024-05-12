function floorp_custom
    # Prompt user for action and capture the choice using fzf
    set OPT (echo "(T)ab"\n"(W)indow" | fzf)

    # Set command and options based on choice
    set URL "$argv[1]"
    set CMD /opt/floorp/floorp
    set HDE hyprctl dispatch exec

    switch $OPT
        case "(T)ab"
            set OPTION --new-tab
        case "(W)indow"
            set OPTION --new-window
        case '*'
            echo "Invalid choice. Exiting."
            return 1
    end

    # Prompt user for URL
    echo "Enter the URL (leave blank for default):"
    read SITE

    # Default URL fallback
    set -q SITE[1]; or set SITE "vimkat"

    # Substitute based on specific keywords
    switch $SITE
        case lcl localhost priv
            set SITE "http://192.168.1.196/"
        case srv adv
            set SITE "https://212.193.3.135/"
        case vimkat
            set SITE "https://vimkat.com/"
        case '*'
            set SITE "https://vimkat.com/"

case 
    end

    # Execute command
    $HDE $CMD -- $OPTION $SITE
end

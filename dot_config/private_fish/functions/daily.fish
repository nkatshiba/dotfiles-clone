function daily

    set _DATA $HOME/nts/obs/daily
    set _FILE "$(date '+%Y-%m-%d')"
    set _DIR "/"
    set _EXT ".md"
    set _PATH $_DATA$_DIR$_FILE$_EXT

    bat $_PATH | gum format -t markdown
    # glow $_PATH
end

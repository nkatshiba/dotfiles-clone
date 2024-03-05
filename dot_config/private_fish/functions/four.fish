function four
    set URL_BASE https://boards.4chan.org/
    set BOARDS b pol r9k gif biz hc vip xs diy sci tv g an
    set BROWSER qutebrowser

    set SELECT (for BOARD in $BOARDS; echo $BOARD; end | fzf)
    set URL_TAR $URL_BASE$SELECT
    # qutebrowser $URL_TAR
    open_in_qute $URL_TAR
end

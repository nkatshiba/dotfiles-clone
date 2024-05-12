function stats
    set PREFIX "https://www.cbssports.com/"
    set POSTFIX "scoreboard/"
    
    set SPORTS nhl/\n"college-basketball/"\n"mlb/"\n"nba/"\n"college-football/"\n"womens-college-basketball/"

    set CHOICE (echo $SPORTS | fzf)
    echo $SPORT
    echo $CHOICE
    
    set URL $PREFIX$CHOICE$POSTFIX

    hyprctl dispatch exec floorp -- --new-tab "$URL"


end

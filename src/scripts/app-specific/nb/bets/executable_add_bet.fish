#! /usr/bin/env fish
# vim: ft=fish.cfg

set -g DIV "************************************************************"


function 2dec
    # Check if the argument is provided
    if not set -q argv[1]
        echo "Usage: american_to_decimal <AmericanOdds>"
        return 1
    end

    # Store the American odds into a variable
    set -l american_odds $argv[1]

    # Convert the American odds to decimal odds based on their sign
    if test $american_odds -gt 0
        # Positive odds
        set -l decimal_odds (math "$american_odds / 100 + 1")
        echo $decimal_odds
    else
        # Negative odds
        set -l decimal_odds (math "-100 / $american_odds + 1")
        echo $decimal_odds
    end

    # Return the decimal odds
    # echo $decimal_odds
end

function query
    set -l PROMPT_STR "$argv: "
    while read -l INPUT --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d

        if test -z "$INPUT"
            set INPUT "NONE"
        end
            echo "$INPUT"
        return 0
    end
end

function confirm
    echo $DIV
    echo "title:"\t$TITLE
    echo "comment:"\t$COMMENT
    echo "content:"\t$CONTENT
    echo $DIV

    set -l PROMPT_STR "add note/file? (y/n)> "
    while read -l --nchars 1 YESNO --prompt-str="$PROMPT_STR"
          or return 1 # if the read was aborted with ctrl-c/ctrl-d

        switch $YESNO
            case 'y'
                nb add -f $TITLE -c $CONTENT -t $COMMENT
                nb edit $TITLE
                return 0
            case 'n'
                echo "exited!"
                return 1
        end

    end
end

# query
set GAME (query "game")
set PICK (query "pick")
set TIME (query "time")
set AM_ODDS (query "odds (american)")
set WAGER (query "wager (kr)")

# convert odds
set DEC_ODDS (2dec "$AM_ODDS")
set DEC_ODDS (string shorten -m 4 -c "" "$DEC_ODDS")
set ODDS $AM_ODDS"/"$DEC_ODDS

# date
set DATE (date +%d%b)

# 2win
set WIN (math $WAGER \* $DEC_ODDS)
set TO_WIN $WIN"kr"

set CONTENT (echo \($TIME\) $GAME "["(string upper $PICK)"]" "|" $WAGER"kr" "@" $ODDS "->" $TO_WIN)
echo $CONTENT

set NB_GAME (string upper $GAME)


# run
# nb add "$DATE.md" --title "$GAME - $PICK" --content "$CONTENT"
nb add bets:"$DATE/" -f "$DATE.md" --title "$CONTENT"
nb ls bets:"$DATE/"

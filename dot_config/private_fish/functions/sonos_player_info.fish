set ARG $argv
function __add_track

    set DIR $HOME/music
    cd $DIR
    # file
    set TUNES $HOME/music/tunes.csv

    # get date
    set DATE (echo -e "$(date +%d/%m/%Y) | $(date +%H:%M:%S)")

    # get full info
    set INFO 'mpris-ctl --player "Sonos - Galaxy S23" info %album_name'
    set INFO (string split " - " (eval $INFO))
    # get track
    set TRACK (echo $INFO[2])
    set TRACK (string upper "$TRACK")
    # get artist
    set ARTIST (echo $INFO[1])
    set ARTIST (string upper "$ARTIST")
    # get station
    set STATION (mpris-ctl --player "Sonos - Galaxy S23" info %track_name)
    set STATION (string upper "$STATION[1]")
    # volume
    set VOLUME $(mpris-ctl --player 'Sonos - Galaxy S23' info %volume)
    set VOLUME (echo (math $VOLUME[1] x 100))

    set CSV_STR "$DATE,$TRACK,$ARTIST,$VOLUME,$STATION"

    echo $CSV_STR >> $TUNES
    chezmoi add $TUNES

end


function __list_tracks

    set DIR $HOME/music
    cd $DIR
    # file
    set TUNES $HOME/music/tunes.csv


    set LAST1 (bat $TUNES | sort --numeric-sort --reverse | gum filter --fuzzy --reverse)
    set LAST1 (string split "," $LAST1)
    set LAST_STR "$LAST1[3] - $LAST1[2]"
    set LAST_STR_CP "$LAST1[3] $LAST1[2]"
    echo $LAST_STR_CP | wl-copy -n

    gum style \
        --foreground="#f4005f" --border-foreground="#FF87D7" --border double \
        --align center --width 50 --margin "1 2" --padding "2 4" --bold \
        "$LAST_STR"

end

function sonos_player_info

    __add_track
    __list_tracks
end


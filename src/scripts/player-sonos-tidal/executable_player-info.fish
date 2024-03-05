#! /usr/bin/env fish

set ARGS $argv

# time
set DATE "$($HOME/src/scripts/system-specific/date/get-date.fish 0)"
set CLOCK "$($HOME/src/scripts/system-specific/date/get-clock.fish)"

# files
set MUSIC_FILE_SCRIPT /home/tildavimer/src/scripts/player-sonos-tidal/tracks_i_like.txt
set MUSIC_FILE_MUSIC /home/tildavimer/music/tracks_i_like.txt
set BASENAME $(path basename $MUSIC_FILE_SCRIPT)

# cmds
set CMD mpris-ctl
set GETINFO info

# mpris params
set TRACK %track_name
set ARTIST %artist_name
set ALBUM %album_name
set PLAYER_STATUS %play_status
set VOL %volume
set CURRENT_TIME %position
set LENGTH %track_length


function show_options
  # echo -e "$(show $TRACK) - $(show $ARTIST) ($(show $ALBUM))"
  # echo \n
  echo "Display options:"
  echo -e "(1). Track name:\t'$(show $TRACK)'"
  echo -e "(2). Artist:\t\t'$(show $ARTIST)'"
  echo -e "(3). Album:\t\t'$(show $ALBUM)'"
  # echo -e "(5). Track length:\t'$(show $LENGTH)'"
  echo -e "(4). Current time:\t'$(show $CURRENT_TIME[1])'"
  echo -e "(6). Vol:\t\t'$(show $VOL)'"
  echo -e "(7). Player status:\t'$(show $PLAYER_STATUS)'"
  echo \n
  echo "Get options:"
  echo "(*). [Track name] - [Show Artist] - [(Album name)] >> File :)"
  echo "(gui). Show Title (GUI)"
  echo "(cli). Show Title (cli)"
  echo \n
end

function get_options
  set OPTION $argv[1]
  switch $argv
    case 1
      echo "$(show $TRACK)"
    case 2
      echo "$(show $ARTIST)"
    case 3
      echo "$(show $ALBUM)"
    case 4
      # echo "$(show $LENGTH)"
    case 5
      # echo "$(show $CURRENT_TIME)"
    case 6
      echo "$(show $VOL)"
    case 7
      echo "'$(show $PLAYER_STATUS)' >> $FILE"
    case 'gui' 'g'
      show_title 0
    case 'add' 'a'
      show_title 1
      save_to_file
    case 'show' 's'
      bat_file
    case 'edit' 'e'
      nvim $MUSIC_FILE_SCRIPT
    case 'watch' 'w'
      watch_file
    case '*'
      show_options
  end
end

function show
  set ARG $argv[1]

  if test "$ARG" = "%artist_name"
    
    set IN $CMD $GETINFO "$ARG"
    set OUTSTR (eval $IN)
    set OUTSTR (echo $OUTSTR | tr -d "[[=X=], [=Y=], [=Z=], [=-=]")

    set OUTPUT $CMD $GETINFO $OUTSTR

  else if test "$ARG" = "%volume"
    set IN $CMD $GETINFO "$ARG"
    set PRE_MATH (eval $IN)
    # echo $PRE_MATH
    set MATH (math $PRE_MATH[1] \* 100)
    # echo $MATH
    echo "$MATH%" | read POST
    set POST_MATH $MATH

    set OUTPUT echo $POST

  else
    set OUTPUT $CMD $GETINFO "$ARG"
  end
  #   eval $OUTPUT
  # set OUTPUT $CMD $GETINFO "$ARG"
  eval $OUTPUT
  
end

function show_title
  set DELIM "\t▶\t"
  set CLI_TITLE "$(show $TRACK)"
  set CLI_ARTIST "$(show $ARTIST)"
  set PRINT_TITLE "$(show $TRACK)"
  set PRINT_ARTIST "$(show $ARTIST)" 
  set CLI $argv
  if test $CLI -eq 0
    hyprctl notify -1 10000 "rgb(FDB778)" "$PRINT_ARTIST"
    hyprctl notify -1 10000 "rgb(FDB778)" "$PRINT_TITLE"
    echo \n
    echo \n
    echo -e $PRINT_TITLE
    echo \n
    echo \n
  else if test $CLI -eq 1
    set -g CLI_TITLES $CLI_TITLE $CLI_ARTIST
    echo \n >> $MUSIC_FILE_SCRIPT
    echo "[$DATE - $CLOCK]" >> $MUSIC_FILE_SCRIPT 
    echo "+ Artist>"\t\t"$CLI_ARTIST" >> $MUSIC_FILE_SCRIPT
    echo "- Track>"\t\t"$CLI_TITLE" >> $MUSIC_FILE_SCRIPT
  end
end

function edit_file
  
  nvim $MUSIC_FILE_SCRIPT
  bat $MUSIC_FILE_SCRIPT > $MUSIC_FILE_SCRIPT

end

function save_to_file
  notify_user

end

function notify_user
  hyprctl notify -1 10000 "rgb(FDB778)" "T:$CLI_TITLES[1] - A:$CLI_TITLES[2]"
  # dunstify -u urgent "> $CLI_TITLES[2]" 
  dunstify -u critical "( $CLOCK )" "> $CLI_TITLES[1] - $CLI_TITLES[2]"

end

function bat_file
  bat $MUSIC_FILE_SCRIPT
end

function watch_file
  batwatch --watcher=entr $MUSIC_FILE_SCRIPT

end

get_options $ARGS
# source $MUSIC_FILE_SCRIPT



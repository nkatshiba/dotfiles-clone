#! /usr/bin/env fish

set PROMPT \n"Please choose an option: "
set INTRO \n"* CAMDROID *"\n
set OPT \n"Available commands:"\n
set S1 "* Terminate (exit) - (1)"
set S2 "* Start App - (2)"
clear
set ISTR $INTRO $OPT $INPUT $S1 $S2 $S3

set -g MPVSTATUS 0
set -g CAMSTATUS 0

set A0 \v
set A1 "* App is running *"\n
set A2 "Press ANY key to terminate/exit: (KEY)"

function option_loop

    while true
        if test $MPVSTATUS -eq 0 -o $CAMSTATUS -eq 0
            read -l USER_INPUT --prompt-str="$PROMPT" 
            echo -e \v"> [$USER_INPUT]" 
            switch "$USER_INPUT"
                case 1
                    kill_pid
                    notify-send -r 999 -u critical -h int:value:100 "CAM IS> ($CAMSTATUS)"
                    exit
                case 2
                    set -g CAMSTATUS 1
                    set -g MPVSTATUS 1
                    notify-send -r 999 -u critical -h int:value:100 "CAM IS> ($CAMSTATUS)"

                    set -g IP 192.168.1.249
                    set -g PORT 4747
                    set -g SIZE -size=1920x1080
                    set -g DEV -dev=/dev/video0
                    set CAM droidcam-cli $DEV $SIZE $IP $PORT
                    eval ($CAM &; disown)

                    set MPV mpv av://v4l2:/dev/video0 --profile=low-latency --untimed --no-terminal --force-window --video-rotate=90
                    set MPV2 mpv http://192.168.1.249:8000/video --profile=low-latency --untimed --no-terminal --force-window --video-rotate=90

                    hyprctl dispatch exec ($MPV &; disown)
                    hyprctl dispatch exec ($MPV2 &; disown)
                    
            end

        else if test $MPVSTATUS -eq 0 -o $CAMSTATUS -eq 1
            clear
            echo "$A0$A1"
            read -l USER_INPUT --prompt-str="$A2" 

            switch "$USER_INPUT"
                case '*'
                    set -g CAMSTATUS 0
                    notify-send -r 999 -u critical -h int:value:100 "CAM IS> ($CAMSTATUS)"
                    kill_pid
                    exit
            end
            break
        # else if test $MPVSTATUS -eq 1 -o $CAMSTATUS -eq 1
        #     hyprctl dispatch exec ($MPV &; disown)
        #     set -g MPVSTATUS 1
        #     break
        end


        if test $CAMSTATUS -eq 1
        else
            notify-send -r 999 -u critical -h int:value:100 "CAM IS> '('$CAMSTATUS')'"
        end
    end
end

function show_options
  for str in $ISTR
      echo $str
  end
end

function kill_pid
    pkill mpv
    if test $status -eq 0
        set -g MPVSTATUS 0
    else if test $status -eq 1
        set -g MPVSTATUS 1
    end

    pkill droidcam-cli
    if test $status -eq 0
    else if test $status -eq 1
        set -g CAMSTATUS 0
    end
end

show_options
option_loop

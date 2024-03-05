#! /usr/bin/env fish

##########################################################################33
function choose_mode
    echo $ACTIONS | tr ' ' '\n' | fzf --header "[FK-ME SCRIPT]"
end

function poweroff
    set DURATION 30
    killall waybar
    hyprctl dispatch exec kitty -- --title "fkme-countdown-top" mongotimer $DURATION
    hyprctl dispatch exec kitty -- --title "fkme-countdown-bottom" mongotimer $DURATION
    for i in (seq $DURATION -1 1)
        notify-send -c fkme "POWEROFF" "(Ctrl+c to cancel)"
        sleep 1
    end
    systemctl poweroff
    hyprctl dispatch exec waybar
    exit

end


function reboot
    set DURATION 30
    killall waybar
    hyprctl dispatch exec kitty -- --title "fkme-countdown-top" mongotimer $DURATION
    hyprctl dispatch exec kitty -- --title "fkme-countdown-bottom" mongotimer $DURATION
    for i in (seq $DURATION -1 1)
        notify-send -c fkme "REBOOT" "(Ctrl+c to cancel)"
        sleep 1
    end
    systemctl reboot
    hyprctl dispatch exec waybar
    exit

end

function suspend
    set DURATION 30
    killall waybar
    hyprctl dispatch exec kitty -- --title "fkme-countdown-top" mongotimer $DURATION
    hyprctl dispatch exec kitty -- --title "fkme-countdown-bottom" mongotimer $DURATION
    for i in (seq $DURATION -1 1)
        notify-send -c fkme "SUSPEND" "(Ctrl+c to cancel)"
        sleep 1
    end
    systemctl suspend
    hyprctl dispatch exec waybar
    exit

end

function notify_and_execute
    set -l ACTION $argv[1]
    for i in (seq 30 -1 1)
        notify-send -c fkme "[$ACTION IN $i SECONDS..]"
        sleep 1
    end
    systemctl $ACTION
end

set -g ACTIONS "POWEROFF SUSPEND REBOOT" 
set -g MODE (choose_mode)

switch $MODE
    case "POWEROFF"
        poweroff
        # notify_and_execute "poweroff"
    case "SUSPEND"
        suspend
    case "REBOOT"
        reboot
end
##########################################################################33

# function __mode
#
#     for ACT in $ACTIONS
#         echo $ACT
#     end | fzf --header "[FK-ME SCRIPT]"
# end
#
# function __notify_loop
#     echo 
#     set I 10
#     while test $I -gt 0
#         # echo $I 
#         # notify-send -r 991 -c fkme "[$MODE in $I seconds..]"
#         notify-send -c fkme "[$MODE in $I seconds..]"
#         set I (math $I - 1)
#         sleep 1
#     end
# end
#
# set -g ACTIONS "POWEROFF" "SUSPEND" "REBOOT" 
# set -g MODE (__mode)
#
# # set MODE (__mode)
# switch $MODE
#     case "POWEROFF"
#         __notify_loop
#         # systemctl poweroff
#     case "SUSPEND"
#         __notify_loop
#         # systemctl suspend
#     case "REBOOT"
#         __notify_loop
#         # systemctl reboot
# end


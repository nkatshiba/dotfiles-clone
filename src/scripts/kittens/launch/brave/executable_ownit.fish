#! /usr/bin/env fish

set -l URL https://play.ownit.se/#/home
set -l BROWSER_APP brave

echo $URL
echo $BROWSER_APP

set CMD nohup $BROWSER_APP $URL

notify-send -r 811 -c mid "[KITTEN-BRAVE-LAUNCHER]" ">> OWNIT-PLAY <<"
kitten @ launch --type os-window --title "ownit-play" $CMD
kitten @ close-window --self

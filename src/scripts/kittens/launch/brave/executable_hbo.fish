#! /usr/bin/env fish

set -l URL https://play.hbomax.com/
set -l BROWSER_APP brave

echo $URL
echo $BROWSER_APP

set CMD nohup $BROWSER_APP $URL

notify-send -r 810 -c mid "[KITTEN-BRAVE-LAUNCHER]" ">> HBO <<"
kitten @ launch --type os-window --title "poker" $CMD
kitten @ close-window --self

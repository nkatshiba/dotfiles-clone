#! /usr/bin/env fish

set -l URL https://www.betsson.com/sv/poker
set -l BROWSER_APP brave

echo $URL
echo $BROWSER_APP

set CMD nohup $BROWSER_APP $URL

notify-send -r 811 -c mid "[KITTEN-BRAVE-LAUNCHER]" ">> POKER <<"
kitten @ launch --type os-window --title "poker" $CMD
kitten @ close-window --self

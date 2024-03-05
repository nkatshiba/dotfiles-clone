#! /usr/bin/env fish

set DATA_D $HOME/src/scripts/prt-screen/custom_prts

cd $DATA_D
set SCREEN "AOC"

set DATE (date '+%H:%M:%S')
set IMG_NAME $SCREEN"_"$DATE".png"

grim -g "1,1080 1915x1080" "$IMG_NAME"
nohup imv "$IMG_NAME" &;disown

clear -x
echo $PWD
echo $IMG_NAME

# cd $DATA_D

# kitten @ launch --type os-window --title app-title --cwd $DATA_D 'eza --sort modified -1 --ignore-glob nohup.out'
kitten @ launch --type os-window --hold --title app-title --cwd $DATA_D fish -c 'eza --sort modified -1 --ignore-glob nohup.out'
# kitten @ launch --type os-window --title app-title --hold --cwd $DATA_D fish -c 'ls'
kitten @ close-window --self

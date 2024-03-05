#! /usr/bin/env fish

cd $HOME/.nb/
set NB_TO_USE (eza -A --only-dirs -1 --ignore-glob .cache | tofi --prompt-text "> " -c /home/tildavimer/.config/tofi/small)
cd $HOME/.nb/"$NB_TO_USE"

nb nb use $NB_TO_USE
nb ls

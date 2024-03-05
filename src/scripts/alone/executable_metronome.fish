#! /bin/fish
set BIN $HOME/src/scripts/alone
cd $BIN

set BPM $argv[1]
set BEATS $argv[2]

echo "BPM: "$BPM
echo "BEATS: "$BEATS

python simple_metronome.py --bpm $BPM --beats $BEATS

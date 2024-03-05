#! /usr/bin/env fish
set -e SAVE2BUKU
set -gx SAVE2BUKU (gum input)
echo $SAVE2BUKU

set QUTE_URL $argv[1]
set QUTE_TITLE $argv[2] 

buku --debug --add "$QUTE_URL" "$SAVE2BUKU" --title "$QUTE_TITLE" -w  # >> /dev/null 2>&1

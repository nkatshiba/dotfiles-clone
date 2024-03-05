#!/usr/bin/env fish
set EDITOR nvim

# set -e SAVE2BUKU
# set -gx SAVE2BUKU (gum input)
# echo $SAVE2BUKU

kitty --title floating_test -e ~/.config/qutebrowser/userscripts/gum_input.fish "$QUTE_URL" "$QUTE_TITLE"
# kitty --title floating_buku -e buku --debug --add "$QUTE_URL" "$GUM_BUKU" --title "$QUTE_TITLE" -w  # >> /dev/null 2>&1
echo "message-info 'Bookmark maybe added to Buku!'" >> "$QUTE_FIFO"

notify-send -t 20000 -r 964 -c buku "[BUKU]" "$QUTE_TITLE - \($QUTE_URL\)"

#!/usr/bin/env fish

# Echo the current tab URL into wl-copy
# echo $QUTE_URL | wl-copy

# Echo the name of the page into wl-copy
# echo $QUTE_TITLE | wl-copy


############################################################
# url
set URL $QUTE_URL

# title
set TITLE (string replace -a " " "_" "$QUTE_TITLE")
set TITLE (string replace -a "_-_" "-" "$TITLE")
set TITLE (string split -r -m 1 "-" $TITLE)
set TITLE (string upper $TITLE[1]) 








echo $URL | wl-copy -n
echo $TITLE | wl-copy -n

notify-send -c y2 "$TITLE"
notify-send -c y2 "$URL"


# kitty --name kitty_xx.fish -e fish
# kitty --name kitty_xx.fish -e $HOME/src/scripts/app-specific/cliphist/cliphist_list_fzf.fish

# kitty --name floating_buku -e buku --debug --add "$QUTE_URL" autoadd --title "$QUTE_TITLE" -w  # >> /dev/null 2>&1
# kitty --name floating_buku -e buku --debug --add "$QUTE_URL" "$GUM_BUKU" --title "$QUTE_TITLE" -w  # >> /dev/null 2>&1


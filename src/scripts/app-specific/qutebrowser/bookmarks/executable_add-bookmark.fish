#!/usr/bin/env fish

set DIR $HOME/QUTE/
set DATE (/home/tildavimer/src/scripts/system-specific/date/get-date.fish 0)
set DATECLI (/home/tildavimer/src/scripts/system-specific/date/get-date.fish 1)
set CLOCK (/home/tildavimer/src/scripts/system-specific/date/get-clock.fish)

set URL $QUTE_URL
set TITLE $QUTE_TITLE
set TIME "$CLOCK - $DATE"

set FILE "$DIR"URLS"$DATECLI"txt""

dunstify -t 5000 "'$QUTE_TITLE' >cute @ $TIME"


echo "" >> $FILE
echo ""$TITLE" ($TIME)" >> $FILE
echo $URL >> $FILE



dunstify "$argv[2]"









# subprocess.run(['qutebrowser', f':open {new_url}'])

#!/usr/bin/env fish

set DIR '$HOME/.nb/.quickmarks'

set URL $QUTE_URL
set TITLE $QUTE_TITLE


notify-send "$TITLE >QM"
notify-send "$URL >QM"



echo $DIR
echo $URL
echo $TITLE




# subprocess.run(['qutebrowser', f':open {new_url}'])

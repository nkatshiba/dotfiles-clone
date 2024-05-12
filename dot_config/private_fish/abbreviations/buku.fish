# buku
# abbr -a b 'clear && buku -p'
abbr -a b 'buku-custom'
abbr -a bpr 'clear && buku --np --deep --nostdin --sany'
abbr -a bd 'clear && buku --np --deep --nostdin --sany'
abbr -a bt 'buku --stag'
abbr -a bs 'buku shorten'
abbr -a bj 'buku -p -j | jq'
# abbr -a bd 'buku -d'
abbr -a bd '$HOME/src/scripts/app-specific/buku/buku-delete.fish'

# b[NUM]
abbr -a b1 'clear && buku -p -f 1 && echo "buku -p -f 1  # (url)" | wl-copy -n && echo -e \n && wl-paste' 
abbr -a b2 'clear && buku -p -f 2 && echo "buku -p -f 2  # (url) & tags" | wl-copy -n && echo -e \n && wl-paste'
abbr -a b3 'clear && buku -p -f 3 && echo "buku -p -f 3  # (title)" | wl-copy -n && echo -e \n && wl-paste'
abbr -a b4 'clear && buku -p -f 4 && echo "buku -p -f 4  # (url, title & tags)" | wl-copy -n && echo -e \n && wl-paste'
abbr -a b5 'clear && buku -p -f 5 && echo "buku -p -f 5  # (title & tags)" | wl-copy -n && echo -e \n && wl-paste'


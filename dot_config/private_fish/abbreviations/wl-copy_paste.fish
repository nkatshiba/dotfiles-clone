# wl-copy_paste
# wl-clipboard
abbr -a wlp wl-paste
abbr -a cwp --position anywhere 'clear -x && wl-paste -n'
abbr -a wls --position anywhere '| wl-copy && wl-paste -n'
abbr -a wlc --position anywhere '| wl-copy && wl-paste -n'
# abbr -a wls 'wl-copy -n'
# abbr -a wlc 'wl-copy -n'
abbr -a cpmain 'bat main.py | wl-copy -n'
abbr -a wlpg 'wl-paste | glow'
abbr -a wlpgv 'wl-paste | glow | vi -'

# copy snips
abbr -a chalm 'echo ybring@chalmers.se | wl-copy -n'


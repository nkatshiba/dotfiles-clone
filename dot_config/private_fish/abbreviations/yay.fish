# yay/pacman abbreviations
abbr -a y 'yay'
# abbr -a y "yay -Slq | fzf --preview 'yay -Si {}' --layout=reverse --bind 'enter:execute(yay -S {})'"
abbr -a yi "yay -Slq | fzf --preview 'yay -Si {}' --layout=reverse --bind 'enter:execute(yay -Si {} | less)'"
abbr -a yr 'yay -Rs'
# abbr -a yr "yay -Slq | fzf --preview 'yay -Si {}' --layout=reverse --bind 'enter:execute(yay -Rs {} | less)'"
abbr -a ye "exp"
# expac
# abbr -a exp "expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail --lines 10"
abbr -a mirrorlist 'sudo reflector --country Sweden --latest 10 --save /etc/pacman.d/mirrorlist'

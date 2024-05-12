# sys
# shutdown / reboot / suspend / logout
## brightnessctl
abbr -a bctl brightnessctl
## playerctl
abbr -a pctl playerctl
abbr -a pctls 'playerctl status'
abbr -a pctlp 'playerctl play-pause'
abbr -a pctlne 'playerctl next'
abbr -a pctlpr 'playerctl previous'
abbr -a pctlm 'playerctl metadata'
### Metadata
abbr -a pctlma 'playerctl metadata xesam:album'
abbr -a pctlmwho 'playerctl metadata xesam:artist'
abbr -a pctlmt 'playerctl metadata xesam:title'
abbr -a pctlmu 'playerctl metadata xesam:url'
abbr -a visudo 'sudo -E visudo'
abbr -a nfiles 'eza -A | wc -l'
abbr -a speedtest-cloudflare '$BROWSER "https://speed.cloudflare.com/"'
abbr -a cfst '$BROWSER "https://speed.cloudflare.com/"'


abbr -a logga 'hyprctl dispatch exit'
abbr -a sussa 'systemctl suspend'
abbr -a reboot 'systemctl reboot'

abbr -a poweroff '$HOME/src/scripts/system-specific/systemctl/fkme.fish'
abbr -a poweroffn 'shutdown -h now'

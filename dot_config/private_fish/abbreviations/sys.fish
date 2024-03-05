# sys
# shutdown / reboot / suspend / logout
abbr -a suckme 'reboot'
abbr -a kissmyass 'shutdown -h now'
abbr -a locked 'waylock -init-color 0x0b090c -input-color 0x191970 -fail-color 0xd75650'
## brightnessctl
abbr -a bctl brightnessctl
## systemctl
abbr -a sctl systemctl
abbr -a sctls 'systemctl status'
abbr -a sctlstop 'systemctl stop'
abbr -a sctlstart 'systemctl start'
abbr -a sctlre 'systemctl restart'
abbr -a sctlenable 'systemctl enable --now'
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


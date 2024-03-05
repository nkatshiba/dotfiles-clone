# makoctl (mctl)
abbr -a mctl 'makoctl'
abbr -a mctlh 'makoctl history'
abbr -a mctljqs "makoctl history | jq -r '.data[][] | select(.[\"app-name\"].data == \"Signal\").body.data' | glow -"
abbr -a mctljq "makoctl history | jq -r '.data[][]'"
abbr -a mctlda 'makoctl dismiss -a'

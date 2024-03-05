complete -c tidal-tdl -n "__fish_use_subcommand" -s h -l help -d 'Print help information'
complete -c tidal-tdl -n "__fish_use_subcommand" -s V -l version -d 'Print version information'
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "get" -d 'Downloads files from the provided TIDAL links'
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "search" -d 'Searches the TIDAL API'
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "login" -d 'Login or re-authenticates with the current access token'
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "logout" -d 'Logout via the TIDAL API and resets the login config'
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "autocomplete"
complete -c tidal-tdl -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s d -l downloads -d 'Maximum number of concurrent downloads.' -r
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s w -l workers -d 'Maximum number of concurrent API requests. Increase this if downloads are slow to queue up' -r
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s q -l quality -d 'Requested audio quality of tracks' -r -f -a "{low	,high	,lossless	,max	}"
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s p -l show-progress -d 'Display the progress bar when downloading files' -r -f -a "{true	,false	}"
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s s -l include-singles -d 'Include singles with getting lists of albums' -r -f -a "{true	,false	}"
complete -c tidal-tdl -n "__fish_seen_subcommand_from get" -s h -l help -d 'Print help information'
complete -c tidal-tdl -n "__fish_seen_subcommand_from search" -s f -l filter -d 'Type of results to return from search' -r -f -a "{all	,artist	,album	,track	,playlist	}"
complete -c tidal-tdl -n "__fish_seen_subcommand_from search" -s m -l max -d 'Maximum number of items to return' -r
complete -c tidal-tdl -n "__fish_seen_subcommand_from search" -s h -l help -d 'Print help information'
complete -c tidal-tdl -n "__fish_seen_subcommand_from login" -s h -l help -d 'Print help information'
complete -c tidal-tdl -n "__fish_seen_subcommand_from logout" -s h -l help -d 'Print help information'
complete -c tidal-tdl -n "__fish_seen_subcommand_from autocomplete" -s s -l shell -d 'Print Shell completions to stdout for the specified shell' -r -f -a "{bash	,elvish	,fish	,powershell	,zsh	}"
complete -c tidal-tdl -n "__fish_seen_subcommand_from autocomplete" -s f -l fig -d 'Print Fig Autocompletion Spec'
complete -c tidal-tdl -n "__fish_seen_subcommand_from autocomplete" -s h -l help -d 'Print help information'

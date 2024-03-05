#! /bin/fish

#!/usr/bin/env fish

set monitors /tmp/hypr/monitors_temp
hyprctl monitors > $monitors

if test -z $argv[1]
  set workspace (grep -B 5 "focused: no" $monitors | awk 'NR==1 {print $3}')
else
  set workspace $argv[1]
end

set activemonitor (grep -B 11 "focused: yes" $monitors | awk 'NR==1 {print $2}')
set passivemonitor (grep  -B 7 "($workspace)" $monitors | awk 'NR==1 {print $2}')
set passivews (grep -A 4 "$passivemonitor" $monitors | awk 'NR==4 {print $1}' RS='(' FS=')')

if test $workspace -eq $passivews; and test $activemonitor != $passivemonitor
  hyprctl dispatch swapactiveworkspaces $activemonitor $passivemonitor
  echo $activemonitor $passivemonitor
else
  hyprctl dispatch moveworkspacetomonitor "$workspace $activemonitor"; and hyprctl dispatch workspace $workspace
end

exit 0

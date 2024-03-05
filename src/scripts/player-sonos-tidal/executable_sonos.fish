#! /usr/bin/env fish

set SONOS 192.168.1.108

switch "$argv"

  case 'cli' 
    mullvad-exclude sinuous -d $SONOS

  case 'gui'
    echo $SONOS | wl-copy -n
    wl-paste
    hyprctl dispatch exec mullvad-exclude /home/tildavimer/.local/appimages/sonos-controller-unofficial-0.3.0-alpha4.AppImage

end

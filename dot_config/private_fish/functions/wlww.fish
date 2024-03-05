function wlww
  set CMD $history[1]
  echo $CMD | wl-copy -n
  wl-paste -n
end

#! /bin/fish

while true
  clear

  set HM $(set_color normal;date +%H:%M:)
  set S $(set_color FFAFCC;date +%S)
  set DELIM $(set_color 036B50;echo ">")

  echo $DELIM $HM$S
  sleep 0.9

end

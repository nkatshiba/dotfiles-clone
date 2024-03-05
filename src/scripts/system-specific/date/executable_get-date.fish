#! /bin/fish

# date
set DATE (date +%d-%m-%y)

# args
set CLI $argv[1]
set EXT $argv[2]


# if zero
if test -z "$CLI"
  echo "Error: Not enough args"
else
  
  if test "$CLI" -eq 0
    echo $DATE | wl-copy -n
    wl-paste

  else if test "$CLI" -eq 1

    if test -z "$EXT"
      set CLI_STR "_"$DATE"."
    else
      set CLI_STR "_"$DATE"."$EXT
    end

    echo $CLI_STR

  end

end

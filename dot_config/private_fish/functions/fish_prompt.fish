function fish_prompt
  set COLOR "#ec40fb"
  set ALT_COLOR "#464646"

  # Cache hostname to avoid repeated calls
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostnamectl hostname)
  end

  set -l WHO (set_color $ALT_COLOR)(whoami)
  set -l HOST (set_color $ALT_COLOR)$__fish_prompt_hostname
  set -l DIV (set_color $COLOR)"@"
  set -l PROMPT (set_color $ALT_COLOR)'$'
  set -l PROMPT_ROOT (set_color $ALT_COLOR)'#'

  set -l DIR (string replace -r "^$HOME" "~" $PWD)

  if test "$DIR" = "~"
    # Home directory
    set DIR_STR "~"
  else if string match -qr "^~" "$DIR"
    # Subdir in home directory
    set DIR_STR (path basename "$DIR")
  else
    # Outside of home directory
    set DIR_STR (string replace -r "^/" "" "$PWD")
    set DIR_STR "/$(path basename $DIR_STR)"
  end

  # Handle root directory separately
  if test "$PWD" = "/"
    set DIR_STR "/"
  end

  # Display prompt
  echo -e "$WHO$DIV$HOST:$(set_color $COLOR)$DIR_STR/ $PROMPT "
end

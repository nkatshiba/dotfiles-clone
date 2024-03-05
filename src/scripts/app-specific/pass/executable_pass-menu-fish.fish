#!/usr/bin/env fish

set -l typeit 0

if test "$argv[1]" = "--type"
	set typeit 1
	set argv (string sub --start=2 -- $argv)
end

	set dmenu tofi -c $HOME/.config/tofi/small
	set xdotool "ydotool type --file -"

set prefix $PASSWORD_STORE_DIR

if test -z "$prefix"
	set prefix ~/.password-store
end

set password_files (find $prefix -name "*.gpg" -type f)
set password_files (string replace --regex -- "$prefix/" "" -- $password_files)
set password_files (string replace --regex -- ".gpg" "" -- $password_files)

set password (printf '%s\n' $password_files | eval $dmenu $argv)

if test -z "$password"
	exit
end

if test $typeit -eq 0
	pass show -c "$password" ^/dev/null
else
	set pass (pass show "$password" | read -l)
	printf %s "$pass" | eval $xdotool
end

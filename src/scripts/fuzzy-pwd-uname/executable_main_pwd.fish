#! /usr/bin/env fish

wtype (pass zZz/pwd/main)

echo (pass zZz/pwd/main_3) | wl-copy -n

wtype (wl-paste)

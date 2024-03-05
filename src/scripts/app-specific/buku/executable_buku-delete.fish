#! /usr/bin/env fish

clear -x

set OBJ (buku -p -f 2 | fzf --tac)

set ITEM (echo $OBJ | string replace -a \t " " -- | string split " " --)
set INDEX $ITEM[1]

buku --delete $INDEX

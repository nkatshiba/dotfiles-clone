#! /usr/bin/env fish

set DATA_DIR $HOME/src/scripts/cli-calendar
set MONTHS "/data/months.txt"
set CURRENT_MONTH (date '+%m')

set MONTH (cat $DATA_DIR$MONTHS | fzf --query="$CURRENT_MONTH")
set YEAR 2024
set MONTH_STR (string split " " $MONTH)

set MONTH $MONTH_STR[1]
command cal $MONTH $YEAR


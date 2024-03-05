function strrep
    set STR_OLD $argv
    set STR_NEW $(string replace -a ' ' '_' "$STR_OLD")
    echo $STR_NEW | wl-copy -n
    echo "wlp>" (command wl-paste -n)
end

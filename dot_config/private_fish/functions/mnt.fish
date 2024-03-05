function mnt
    set MNT_DIR /media
    cd $MNT_DIR

    set A (df -h | rg /dev/sd | fzf)
    set B (string split " " $A)

    set FILESYSTEM (echo $B[1])
    set SIZE (echo $B[9])
    set USED (echo $B[11])
    set FREE (echo $B[14])
    set USE_PERCENT (echo $B[17])
    set MNT_POINT (echo $B[18])

    clear -x
    cd $MNT_POINT 
    set FS_SPLIT (string split "/" $FILESYSTEM)
    echo "[$FS_SPLIT[3]] >"\n
    dust -d 1 --no-percent-bars --ignore_hidden
    echo -e ""
    pwdcp
    echo -e ""
end

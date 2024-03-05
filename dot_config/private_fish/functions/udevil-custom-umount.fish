function udevil-custom-umount

    set MNT_POINT /media

    lsblk | while read -l line
        if string match -r '└─.*' $line >/dev/null
            or string match -r '├─.*' $line >/dev/null
            if not string match -r '.*nvme*' $line >/dev/null
                # echo (string sub -s 3 -e 7 $line)
                set DEVS (string join " " $DEVS (string sub -s 3 -e 6 $line))
                # echo $f
                # set f (string join " " $f "kalle")
            end
        else if string match -r 'NAME.*' $line >/dev/null
            # echo $line
        end
    end


    set DEVS (string split " " $DEVS)
    set DEV (gum choose --header="$(lsblk)" $DEVS)
    set DEV_RAW "/dev/"$DEV
    echo $DEV
    echo $DEV_RAW

    # clear
    clear -x

    # cd home
    jj ~

    # mount
    udevil umount $DEV_RAW
    echo ""

    # lsblk
    lsblk

end

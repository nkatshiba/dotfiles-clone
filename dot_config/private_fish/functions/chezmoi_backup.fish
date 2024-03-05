function chezmoi_backup
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

    set DATE (date +%d-%b-%Y)

    # clear
    clear -x

    # mount
    udevil mount $DEV_RAW
    echo ""

    # cd mnt point
    jj $MNT_POINT $DEV dotfiles
    echo ""

    # ls
    eza -1

    # archive name
    set TAR_NAME "dotfiles_"$DATE".tar"
    echo $TAR_NAME

    # cp dotfiles
    tar cf $TAR_NAME ~/.dotfiles

    # set last backup date as env
    set -Ux CHEZMOI_BAK_DATE (date +%d-%b-%Y)
    echo $CHEZMOI_BAK_DATE

end

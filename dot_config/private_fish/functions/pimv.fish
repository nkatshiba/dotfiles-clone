function pimv -w 'imv'

    set PRTS_DIR $HOME/prts
    jj $PRTS_DIR

    set -l N $argv[1]
    set DEFAULT 3
    if test -z "$N"
        echo "Default of ($DEFAULT)"
        set N $DEFAULT
    end

    set -l files (ls --sort created *.png | tail -n $N)
    if test -z "$files"
        echo "No images found."
        return 1
    end

    imv -d $files

end

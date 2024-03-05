function night --wraps gammastep --description 'gammastep [TEMPERATURE]'

    set KELVIN $argv[1]

    if test -z $KELVIN
        set KELVIN 3500
    end

    killall gammastep
    gammastep -O $KELVIN &
    disown
    echo "T is> $KELVIN"

end

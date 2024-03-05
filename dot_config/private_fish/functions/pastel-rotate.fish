function init
    set -g N_ANGLES (input "# of angles?")
    echo "Number of angles: $N_ANGLES"
    set -g COLOR (input "Color?")
    echo "Color: $COLOR"
    echo "Colors:"
end

function angle_loop
    set I 0
    set INC (math 360 / $N_ANGLES)

    while test $I -le 360
        echo $I
        set I (math $I+$INC)
    end
end

function pastel-rotate -w 'pastel rotate'

    set DIV "********************"
    echo $DIV
    init
    set -g ANGLES (angle_loop)
    set NUM (math 360 / $N_ANGLES) 

    for ANGLE in $ANGLES
        pastel rotate $ANGLE $COLOR | pastel format hex -
    end
end

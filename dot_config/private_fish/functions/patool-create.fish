function patool-create

    set -g CMD patool create
    set -g FILES $argv

    

    if test -z "$argv"
        $CMD --help
    else
        __create
    end


end

function __create 
    set EXT .tar.gz
    set NAME (string upper (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#ffffff" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[PATOOL CREATE]" --placeholder "Name of Archive..."))
    set FULL_NAME $NAME$EXT
    echo $FULL_NAME

    $CMD $FULL_NAME $FILES 
    gum style --background="#020202" --border-background="#f4005f" --foreground="#00f495" --border double --align center --width 50  --padding "2 1" --bold --italic "_-^ $FILES >> $FULL_NAME ^-_"
end

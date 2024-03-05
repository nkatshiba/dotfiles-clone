function ripgrep

    # Logfile
    set LOGDIR $HOME/logs/rg
    set EXTENSION ".txt"
    set LOGNAME $LOGDIR"/"$DATE$EXTENSION

    # Formatting
    set DATE today 
    set TOP "***-***-***-***-***-***-***-***-***-***-***-***-***-***-***-***"
    set MID "---------------------------------------------------------------"

    # Command
    set CMD rg
    set ARG $argv
    set PARAM --pretty --context 1 --context-separator '***' --hidden --ignore-case --search-zip --sortr 'modified'
    
    # Format
    echo "$TOP"
    echo "$TOP" >> $LOGNAME
    # echo $LOGNAME >> $$LOGNAME
    # echo $MID >> $$LOGNAME
    #
    # # Exec
    # $CMD $ARG $PARAM >> $($LOGNAME)
    #
    # # Print
    bat $LOGNAME
    
end

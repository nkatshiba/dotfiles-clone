function vich -w chmod
    set FILE $argv
    clear -x
    vi $FILE
    chmod +x $FILE
    ls $FILE
end

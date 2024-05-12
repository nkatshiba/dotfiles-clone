function zpa -w zpaq
    set FILE (eza --classify --sort modified -1 | fzf --tac)
    echo $FILE
    set DATE (datetime)
    echo $DATE
    set ARCHIVE_NAME $FILE"__"$DATE".zpaq"
    echo $ARCHIVE_NAME

    command zpaq a $ARCHIVE_NAME $FILE
    eza -AF $FILE*
end

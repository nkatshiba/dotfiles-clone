function pwdd
    set DIR_HOME (dirname ~/)
    set WHO (whoami)

    set PATH_PART_TO_RM $DIR_HOME"/"$WHO

    set PATH_CURRENT (pwd)
    set PATH_PARTS (string split / $PATH_CURRENT)
    set DESIRED_FORMAT (string join / $PATH_PARTS[1..3] ... $PATH_PARTS[-2..-1])

    set desired_output (string replace -r "^$PATH_PART_TO_RM" "~" $DESIRED_FORMAT)
    echo $desired_output

end

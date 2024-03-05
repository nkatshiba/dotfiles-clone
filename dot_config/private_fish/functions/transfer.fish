function transfer --description 'Easy file sharing from the command line using http://transfer.sh'
    if test (count $argv) -eq 0
        echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md";
        return 1; 
    end
    set tmpfile ( mktemp -t transferXXX ); 
    if tty -s
        set basefile (basename $argv[1] | sed -e 's/[^a-zA-Z0-9._-]/-/g');
        curl -v --progress-bar --upload-file $argv[1] "https://transfer.sh/$basefile" 2>&1 | grep -i 'https://transfer.sh' >> $tmpfile; 
    else 
        curl -v --progress-bar --upload-file "-" "https://transfer.sh/$argv[1]" 2>&1 | grep 'https://transfer.sh' >> $tmpfile ; 
    end; 
    cat $tmpfile; 
    rm -f $tmpfile;
end

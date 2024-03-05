function mkdird
    set DATE (date +%Y%m%d)
    clear -x
    mkdir $DATE
    cd $DATE
    pwdcp
end

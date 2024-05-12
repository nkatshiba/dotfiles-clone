function buku-custom -w 'buku' -d 'alias buku-custom=buku --colors MLifO'
    if test -n "$argv"
        command buku --colors MLifO $argv
    else
        command buku -p --colors MLifO
    end
end

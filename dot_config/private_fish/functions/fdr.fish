function fdr -w 'fd' -d 'alias fdr=fd --hidden --no-ignore /'

    cd /
    fd --hidden --no-ignore "$argv"

end

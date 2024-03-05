function hh
    # set -f fzfop $(history -n 10 | fzf)
    # commandline -r "$fzfop"
    #
    set fzfop 'commandline -r $history[1]'
    eval $fzfop
end

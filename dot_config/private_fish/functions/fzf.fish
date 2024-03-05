function fzf
    command fzf --color='bg:#020202,bg+:#020202,info:#FFF2B3,border:#f4005f,spinner:#00f495' \
    --color='hl:#00f495,fg:#dcdcdc,header:#00f495,fg+:#f4005f' \
    --color='pointer:#00f495,marker:#E17899,prompt:#74dee3,hl+:#FFF2B3' --prompt="< " $argv

end

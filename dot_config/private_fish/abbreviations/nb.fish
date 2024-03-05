# edit nb.fish abbrs
abbr -a nbnb 'nvim $HOME/.config/fish/abbreviations/nb.fish && chezmoi add $HOME/.config/fish/abbreviations/nb.fish'

# nb
# abbr -a nb 'clear -x && nb'
abbr -a nbb 'qutebrowser http://localhost:6789/'
abbr -a nbt 'nb todos'
abbr -a nbe 'nb edit'
abbr -a nba '. $HOME/src/scripts/app-specific/nb/nb_bm_add_helper_NBA.fish'
abbr -a nbi 'nb --interactive'
abbr -a nbf 'nb folders'
abbr -a nbfh 'nb folders -h'
abbr -a nbfa 'nb folders add'
abbr -a nbr 'nb rm'
abbr -a nbnbn 'nb nb add' 
abbr -a nbnba 'nb nb add'
abbr -a nbfuncs 'clear -x && z scripts app-specific nb && ls' 
abbr -a nbnbcas 'nb nb use mpcas'
abbr -a nbm 'nb mv'
abbr -a nbv 'nb view'
abbr -a nbc 'clear -x && cd ~/.nb && ls'
abbr -a nbcd 'clear -x && cd ~/.nb && ls'




# nb use
abbr -a nbu '. ~/src/scripts/app-specific/nb/nb_nb_use_helper_NBU.fish'
abbr -a nbnbu 'nb nb use'
# use:
abbr -a nbusex 'nb use .6'
abbr -a nbuaur 'nb use aur'
abbr -a nbuc 'nb use colors'
abbr -a nbucas 'nb use mpcas'
abbr -a nbus 'nb use srv'
abbr -a qm 'cd $HOME/.nb/.quickmarks'


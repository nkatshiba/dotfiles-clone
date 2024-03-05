# Edit navigation
set F_PATH "$HOME/mpcas/y1/lp2/fim770_tif155_dynamical_systems/alternative_courses/cheat"
abbr -a nav 'nvim $HOME/.config/fish/abbreviations/navigation.fish && chezmoi add $HOME/.config/fish/abbreviations/navigation.fish'
abbr -a home --position anywhere '$HOME/'
# Navigation
abbr -a tmp '$HOME/.tmp'
abbr -a temp '$HOME/.tmp'
abbr -a down 'z k dlds'
abbr -a downs 'z ~/Downloads/'
abbr -a docs 'z ~/Documents/'
abbr -a pics 'z ~/Pictures/'
abbr -a desk 'z ~/Desktop/'
abbr -a nts 'z ~/nts/'
abbr -a ... 'cd ../../ && ls'
abbr -a .... 'cd ../../../ && ls'
# abbr -a play '$HOME/src/PLAYGROUND/ && ls'
abbr -a src 'cd $HOME/src/school'
# abbr -a scr 'z src scr'
# abbr -a c 'cd $HOME/.config/'
abbr -a priv 'z .private'
# abbr -a k 'cd ~/k'
abbr -a dlds 'cd ~/dlds && eza'
abbr -a pics 'cd ~/Pictures'
abbr -a prts 'clear -x; j $HOME/prts; eza -F --sort newest -1'
abbr -a sec 'cd ~/k/sec'
# abbr -a fifu 'z .co fish func'
abbr -a fico 'z .co fish conf'
abbr -a ab 'cd_abbrs_and_chezmoi_add'
abbr -a fun 'cd_funcs_and_chezmoi_add'
abbr -a root 'cd / && clear'
abbr -a baks '$HOME/.backup'
abbr -a ses 'cd $HOME/.config/kitty/ses'
abbr -a cdr 'cd /'
abbr -a me 'clear -x && cd $HOME/me && ls'
abbr -a cd.. 'cd ..'
# abbr -a one ' clear -x && jj $HOME onedrive && eza -lFsmodified'
abbr -a bib 'jj ~/bible'
# tmp
# abbr -a selw 'cd $WORK_PATH && sel blob.py experiment.py initialize_blobs.py setup_plot.py'
# abbr -a works "clear -x && cd $WORK_PATH && sel blob.py experiment.py initialize_blobs.py setup_plot.py"

# abbr -a W 'clear -x && cd $W_PATH && eza -lFsmodified'
# abbr -a F 'clear -x && cd $F_PATH && eza -lFsmodified'
abbr -a F 'cd $F_PATH && zathura --fork *.pdf'

# self
abbr -a josie '$HOME/me/self/josie'
abbr -a mams '$HOME/me/self/mams'
abbr -a obs '$HOME/nts/obs'


# cme (eza --sort modified --reverse | fzf)
abbr -a movs 'cd $HOME/movies'
abbr -a shorts 'cd $HOME/movies/shorts'

# chezmoi
# Chezmoi
abbr -a cm chezmoi
# abbr -a cme 'chezmoi edit'
# abbr -a ce 'chezmoi edit'
abbr -a cma 'chezmoi add'
abbr -a cmappv 'chezmoi apply -v'
abbr -a cmapp 'chezmoi apply'
abbr -a cmcd 'clear -x;z /home/tildavimer/.dotfiles;echo ""; git status -s && git log --oneline --graph --color=always -n 10'
abbr -a cmdii 'clear -x;chezmoi diff'
abbr -a cmdi "clear -x;chezmoi diff | rg --context 3 --line-number 'diff --git a/'"
abbr -a cmd 'clear -x;chezmoi diff | rg --line-number "diff --git a/"'
# abbr -a cmdi 'chezmoi diff --pager page'
abbr -a cmu 'chezmoi unmanaged'
abbr -a cmuh 'chezmoi unmanaged .'

abbr -a vii 'chezmoi edit'
abbr -a cms 'chezmoi status'
abbr -a cmf 'chezmoi forget'
abbr -a cmgp 'ssh-add /home/xshiba/.ssh/id_ed25519 && git push && git push gh'
abbr -a cmrm 'chezmoi remove'

# backup
abbr -a cmbak 'chezmoi_backup'

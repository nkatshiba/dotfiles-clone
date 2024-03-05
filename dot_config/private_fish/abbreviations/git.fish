# git

# abbr -a gcminit 'git commit -m "INITIALIZED REPO"'
# abbr -a gcm 'git commit -m'
abbr -a gp 'git push'
abbr -a gpu 'git push'
abbr -a gs 'git status -s'
abbr -a gss 'git status'
abbr -a grp 'git pull --rebase'
abbr -a ga 'git add'
abbr -a gaa 'git add .'
abbr -a gd 'git diff'
abbr -a grm 'git rm'
abbr -a gcl 'git clone $(wl-paste -n)'
abbr -a gf 'git fetch'
abbr -a gb 'git branch'
abbr -a gcma 'git commit --amend -m' # Rename last commit
abbr -a grmd 'git rm $(git ls-files --deleted)' # Remove deleted files from both index and working dir
abbr -a gl 'git log --oneline --graph'
abbr -a gla 'git log --oneline --all'
abbr -a gc 'git checkout -b'
abbr -a grc 'git reset --soft HEAD~1' # Undo last commit
abbr -a grf 'git-reset-file' # Undo modifications to file
abbr -a gr 'git restore'
abbr -a gm 'git mv'
abbr -a gbl 'git branch --list'
abbr -a gbi 'git bisect'
abbr -a gbd 'git branch -d'
abbr -a groot 'cd (git-root)'
abbr -a grb 'git-browse'
abbr -a grv 'git remote -v'

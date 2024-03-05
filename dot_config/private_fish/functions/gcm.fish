function gcm --wraps 'git cz' --description 'alias gcm=git cz && gitlint'


    div_with_desc "*" "[LOG]" F4005F
    git log --oneline --graph --color=always -n 10
    div_with_desc "*" "[STATUS]" 62C0C7
    git status --short -uno
    echo ""
    div_with_desc "*" "[GCM]" 87E289
    # cc-cli
    $HOME/src/scripts/posix/git-scripts/commit-simple.sh
    # gitlint

    # commits
    # commited
    # cc-cli
    # git cz
    # mji

end

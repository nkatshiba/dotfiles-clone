function gcm --wraps 'git cz' --description 'alias gcm=git cz && gitlint'


    div_with_desc "*" "[LOG]" F4005F
    git log --oneline --graph --color=always -n 10
    div_with_desc "*" "[STATUS]" 62C0C7
    git status --short -uno
    echo ""
    div_with_desc "*" "[GCM]" 87E289
    set MESSAGE (input "commit message")
    git commit -m "$MESSAGE"

end

function jjcp --wraps z --description 'alias jjc=z chezmoi'
    clear -x
    z .dotfiles $argv
    git push
end

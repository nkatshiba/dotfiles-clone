function tree -w 'eza --tree'

    switch $argv
        case 1
            eza --tree --level 1 --ignore-glob nohup.out
        case 2
            eza --tree --level 2 --ignore-glob nohup.out
        case 3
            eza --tree --level 3 --ignore-glob nohup.out
        case 4
            eza --tree --level 4 --ignore-glob nohup.out
        case 5
            eza --tree --level 5 --ignore-glob nohup.out
        case '*'
            eza --tree $argv --ignore-glob nohup.out
    end

end

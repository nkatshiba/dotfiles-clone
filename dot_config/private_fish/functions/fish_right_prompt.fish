# function fish_right_prompt --description Hydro
# echo -e (set_color 9a0d59)"$$_hydro_git$hydro_color_normal$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal"


# set DELIM $(set_color 9a0d59;echo "< ")
# set HM $(set_color $hydro_color_time;date +%H:%M)

# echo $DELIM$HM
# end 

function fish_right_prompt --description Hydro

    set -l normal (set_color normal)
    set -l col_PARA (set_color 9D65FF)
    set -l col_TEXT (set_color 87E289)
    set -l col_DIRTY (set_color f4005d)


    function __git_branch_name
        echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
    end

    function __is_git_dirty
        echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
    end

    if [ (__git_branch_name) ]
        set -l parenthesis_start $col_PARA'('
        set -l parenthesis_end $col_PARA')'

        set git_info $col_TEXT(__git_branch_name)
        set git_info "$parenthesis_start$git_info"

        if [ (__is_git_dirty) ]
            set -l dirty $col_DIRTY" *"
            set git_info "$git_info$dirty"
        end

        set git_info "$git_info$parenthesis_end"
    end

    # output
    echo -n -s $git_info $normal

end

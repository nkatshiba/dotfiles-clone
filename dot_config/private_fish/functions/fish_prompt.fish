# function fish_prompt --description Hydro
#     echo -e "$_hydro_color_pwd$_hydro_pwd$hydro_color_normal $_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal$_hydro_status$hydro_color_normal Ø $_hydro_color_git$$_hydro_git$hydro_color_normal$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal"
#     # echo -e "$_hydro_color_pwd$_hydro_pwd$hydro_color_normal $_hydro_color_git$$_hydro_git$hydro_color_normal$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal$_hydro_status$hydro_color_normal "
# end

# name: L
function __git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function __is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function prompt_pwd_full
  set -q fish_prompt_pwd_dir_length; or set -l fish_prompt_pwd_dir_length 1

  if [ $fish_prompt_pwd_dir_length -eq 0 ]
    set -l fish_prompt_pwd_dir_length 99999
  end

  set -l realhome ~
  echo $PWD | sed -e "s|^$realhome|~|" -e 's-\([^/.]{'"$fish_prompt_pwd_dir_length"'}\)[^/]*/-\1/-g'
end

function fish_prompt

  set -l cyan (set_color cyan)
  set -l brcyan (set_color brcyan)
  set -l brgreen (set_color brgreen)
  set -l brblack (set_color brblack)
  set -l bryellow (set_color bryellow)
  set -l normal (set_color normal)

  # set -l col_2 (set_color 8b7c8f)
  # set -l col_4 (set_color b78bff)




  # seperator
  # set NUM_COLS (tput cols)
  # set -l SEP_COL (set_color 746589)
  # # set -l SEPARATOR "------------------------------------------------------------"
  # set -l SEPARATOR_SYM "-"
  # set -l SEPARATOR $SEP_COL$SEPARATOR_SYM
  # # set -l SEPARATOR_STR (string repeat -n $NUM_COLS $SEPARATOR)
  # # echo $SEPARATOR_STR
  # string repeat -n $NUM_COLS $SEPARATOR

  # output
  set -l ARROW_COL (set_color d7baff)
  set -l ARROW_SYM "Ø"
  set -l ARROW_STR $ARROW_COL$ARROW_SYM
  set -l PWD_COL (set_color 8a66c9)
  set -l PWD_STR $PWD_COL(prompt_pwd_full)

  # if [ (__git_branch_name) ]
  #   echo "hej"
  # end

 
  # if [ (_git_branch_name) ]
    # set -l parenthesis_start $brcyan"("
    # set -l parenthesis_end $brcyan")"

    # set git_info $brgreen(_git_branch_name)
    # set git_info "$parenthesis_start$git_info"

    # if [ (_is_git_dirty) ]
      # set -l dirty $bryellow"*"
      # set git_info "$git_info$dirty"
    # end
    #
    # set git_info "$git_info$parenthesis_end"
  # end

  # set -l parenthesis_start $brcyan"("
  # set -l parenthesis_end $brcyan")"
  
  # set git_info $brgreen(_git_branch_name)
  # set git_info "$parenthesis_start$git_info"
  
  # if [ (_is_git_dirty) ]
  # set -l dirty $bryellow"*"
  # set git_info "$git_info$dirty"
  # end
  
  # set git_info "$parenthesis_start$git_info$parenthesis_end"

  set git_info "$_hydro_color_git$$_hydro_git$hydro_color_normal"
  # echo $separator


  # echo $sep1$separator

  # echo -n -s $cwdp1

  # echo -n -s $cwdp2 $git_info $normal ' ' $arrow ' '
  # echo -n -s $cwdp2
  # echo -n -s $cwdp3
  # echo -n -s $cwdp4

  echo -n -s $PWD_STR $normal ' ' $ARROW_STR ' '
  # echo -n -s $PWD_STR $git_info $normal ' ' $ARROW_STR ' '

end

# #746589
# #36a094
# #9865fe
# #fd9246
# #98e024
# #74e3b1
# #74dee3
# #c4c5b5
# #fdb877
# #dc143c


  # TEST
  ##############################################
  # set_color normal
  # set_color 746589
  # set_color 36a094
  # set_color 9865fe
  # set_color fd9246
  # set_color 98e024
  # set_color 74e3b1
  # set_color 74dee3
  # set_color c4c5b5
  # set_color fdb877
  # set_color dc143c
  #
  # set -l c2 (set_color 746589)
  # set -l c3 (set_color 36a094)
  # set -l c4 (set_color 9865fe)
  # set -l c5 (set_color fd9246)
  # set -l c6 (set_color 98e024)
  # set -l c7 (set_color 74e3b1)
  # set -l c8 (set_color 74dee3)
  # set -l c9 (set_color c4c5b5)
  # set -l c10 (set_color fdb877)
  # set -l c11 (set_color dc143c)
  # set -l c14 (set_color brgreen)
  # set -l c16 (set_color bryellow)
  #
  # set -l cwd2 $c2(prompt_pwd_full)
  # set -l cwd3 $c3(prompt_pwd_full)
  # set -l cwd4 $c4(prompt_pwd_full)
  # set -l cwd5 $c5(prompt_pwd_full)
  # set -l cwd6 $c6(prompt_pwd_full)
  # set -l cwd7 $c7(prompt_pwd_full)
  # set -l cwd8 $c8(prompt_pwd_full)
  # set -l cwd9 $c9(prompt_pwd_full)
  # set -l cwd10 $c10(prompt_pwd_full)
  # set -l cwd11 $c11(prompt_pwd_full)
  # set -l cwd14 $c14(prompt_pwd_full)
  # set -l cwd16 $c16(prompt_pwd_full)
  #
  # echo -n -s $brblack(prompt_pwd_full) " | "
  # echo -n -s $cwd2 " Ø "  # darkpurple
  # echo -n -s $cwd3 " Ø "  # darkgreenblue
  # echo -n -s $cwd4 " Ø "  # purple
  # echo -n -s $cwd9 " Ø "  # white/yellow
  # echo -n -s $cwd10 " Ø "  # mango
  # echo -n -s $cwd11 " Ø "  # darkred
  # echo -n -s $cwd14 " Ø "  # lightgreen
  # echo -n -s $cwd16 " Ø "  # yellow
  # echo -n -s $cwd8 " Ø "  # turquoise
  # echo -n -s $cwd7 " Ø "  # monk/teal
  # echo -n -s $cwd6 " Ø "  # lime

  # set y1 (set_color d3ff8b)
  # set y2 (set_color cbfe65)
  # set y3 (set_color a5c966)
  # set y4 (set_color e2ffba)
  # set y5 (set_color fdb877)
  # set r1 (set_color dc143c)
  # set -l cwdr1 $r1(prompt_pwd_full)
  # set -l cwdy1 $y1(prompt_pwd_full)
  # set -l cwdy2 $y2(prompt_pwd_full)
  # set -l cwdy3 $y3(prompt_pwd_full)
  # set -l cwdy4 $y4(prompt_pwd_full)
  # set -l cwdy5 $y5(prompt_pwd_full)

  # echo -n -s $cwdy1 " | "
  # echo -n -s $cwdy2 " | "
  # echo -n -s $cwdy3 " | "
  # echo -n -s $cwdy4 " | "
  # echo -n -s $cwdy5 " | "
  #
  # echo -n -s $cwdr1 " | "
  ##############################################


# echo Terminal Dimensions: $(tput cols) columns x $(tput lines) rows
#
# echo "***************************************************************************************************************************************"

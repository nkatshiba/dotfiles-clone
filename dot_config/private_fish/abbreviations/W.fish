# W navigation / school
set INSTRUCTIONS $HOME/src/school/TME286/homework-1/instructions.pdf
set W_SELF_PATH "$HOME/src/school/TME286/homework-1/problem_2"
set W_ORG_PATH "$HOME/src/school/TME286/homework-1/problem_2_CANVAS"
set W_CLONE_PATH "$HOME/src/school/TME286/homework-1/problem_2_SIT"





# cds
abbr -a W 'clear -x && cd $W_SELF_PATH && ls'
abbr -a Wo 'clear -x && cd $W_ORG_PATH && ls'
abbr -a Wc 'clear -x && cd $W_CLONE_PATH && ls'
abbr -a Wi 'zathura $INSTRUCTIONS'

# set -g TODO_FILE "$HOME/TODO.md"
#
# function kke
#     echo ""
#
#     # edit
#     vi $TODO_FILE
#     echo ""
#     source $TODO_FILE
#     kk
# end
#
# function kka
#     kk
#     echo ""
#
#     # add
#     set NEW (gum input --header "Add TODO" --placeholder "todo..")
#     if test -n $NEW
#         echo "- [ ] "$NEW >> $TODO_FILE
#     end
# end
#
# function kk -w 'mdt' -d "alias kk=mdt"
#
#     clear -x
#
#     # view
#     if test $(count $argv) -gt 0
#         command mdt $argv
#     end
#     # string match -rv '\[✓\]' (bat $TODO_FILE | gum format --type markdown)
#     glow $TODO_FILE | string match -rv '\[✓\]' | glow -s $HOME/m.json -
#     echo ""
#
# end

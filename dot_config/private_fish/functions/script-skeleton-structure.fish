function script-skeleton-structure
    # data dir
    # set DATA_D $HOME/src/scripts
    # cd data dir
    # cd $DATA_D


    # clear
    clear -x

    # get name of dir
    set NAME (input "Script Name?")
    mkdir $NAME

    # cd dir
    cd $NAME

    # make script data dir
    mkdir data


    # create main file
    touch $NAME.fish
    set WORKING_DIR (string replace -a "/home/tildavimer" "\$HOME" "$PWD")

    echo "#! /usr/bin/env fish" > $NAME.fish
    echo "" >> $NAME.fish
    echo "set DATA_DIR" "$WORKING_DIR" >> $NAME.fish
    

    # change permissions
    chmod +x $NAME.fish

    # create readme
    touch README.md
    echo "# $NAME" > README.md

    # ls
    ls

    # pwd
    pwdcp
    
end

# function script-skeleton-structure
#     # data dir
#     # set DATA_D $HOME/src/scripts
#     # cd data dir
#     # cd $DATA_D
#
#
#     # clear
#     clear -x
#
#     # get name of dir
#     set NAME (input "Script Name?")
#     mkdir $NAME
#
#     # cd dir
#     cd $NAME
#
#     # make script data dir
#     mkdir data
#
#
#     # create main file
#     touch $NAME.fish
#     echo "#! /usr/bin/env fish" > $NAME.fish
#
#     # change permissions
#     chmod +x $NAME.fish
#
#     # create readme
#     touch README.md
#     echo "# $NAME" > README.md
#
#     # ls
#     ls
#
#     # pwd
#     pwdcp
#     
# end

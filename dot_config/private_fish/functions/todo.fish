function todo
    set -l TODO_CONFIG_FILE $HOME/.config/fish/functions/todo.fish
    set -l TODO_FILE ~/.TODO_LIST
    set -l IMAGE_FILE ~/.TODO_LIST.png
    set -l FONT_SIZE 20 # Increase the font size as needed
    set -l LINE_SPACING 2 # Space between tasks in pixels

    

    switch $argv[1]
        case add a
            set INPUT (input "task..")
            set INPUT_CAP "- $(capitalize $INPUT)"
            echo -e "            $INPUT_CAP" >> $TODO_FILE
            # echo "- $(capitalize $argv[2..-1])" >> $TODO_FILE
            echo "Added task: "$argv[2..-1]

        case edit e
            vi $TODO_FILE
            echo "To-do list updated."
            # Use the spaced text file to create the image
            convert -size 1920x1080 xc:#020202 -font FiraCode-Nerd-Font-Mono-SemBd -pointsize $FONT_SIZE -fill "#ec40fb" -gravity northwest -annotate +50+50 "@$SPACED_TODO_FILE" $IMAGE_FILE
            # Set wallpaper
            swww img $IMAGE_FILE --resize fit

        case list l
            if test -e $TODO_FILE
                cat $TODO_FILE
            else
                echo "Your to-do list is empty."
            end

        case clear
            if test -e $TODO_FILE
                rm $TODO_FILE
                echo "To-do list cleared."
            else
                echo "Your to-do list is already empty."
            end

        case update upd
            vi $TODO_FILE
            echo "To-do list updated."

        case help h
            echo "Usage: todo [add/list/clear/update] [task]"

        case config cfg
            cme $TODO_CONFIG_FILE

        case '*'
            set INPUT (input "task..")
            set INPUT_CAP "- $(capitalize $INPUT)"
            echo -e "            $INPUT_CAP" >> $TODO_FILE
            # echo "- $(capitalize $argv[2..-1])" >> $TODO_FILE
            echo "Added task: "$argv[2..-1]
    end

    # Update the image if the to-do file exists and has tasks
    if test -e $TODO_FILE
        # Create an intermediate text file with added line spacing
        set -l SPACED_TODO_FILE ~/.spaced_todo_list
        rm -f $SPACED_TODO_FILE
        for line in (cat $TODO_FILE)
            echo $line >> $SPACED_TODO_FILE
            # Add empty lines for spacing
            for i in (seq $LINE_SPACING)
                echo "" >> $SPACED_TODO_FILE
            end
        end

        # Use the spaced text file to create the image
        convert -size 1920x1080 xc:#020202 -font FiraCode-Nerd-Font-Mono-SemBd -pointsize $FONT_SIZE -fill "#ec40fb" -gravity northwest -annotate +50+50 "@$SPACED_TODO_FILE" $IMAGE_FILE  # 
        # Set wallpaper
        swww img $IMAGE_FILE --resize fit
    end


end

# function capitalize
#     set -l input $argv[1]
#     set -l first_char (string sub -l 1 -- $input | string upper)
#     set -l rest_of_string (string sub -s 2 -- $input)
#     echo $first_char$rest_of_string
# end

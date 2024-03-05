function mp4cut -w ffmpeg
    set FILE "$argv"
    set INPUT_START_NAME "START TIME"
    set INPUT_END_NAME "END TIME"
    set INPUT_FORMAT "00:00:00"

    set TIME_START (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#fbc740" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[$(string upper $INPUT_START_NAME)]" --placeholder "$INPUT_FORMAT")
    set TIME_END (gum input --cursor.background="#020202" --cursor.bold --cursor.foreground="#fbc740" --header.bold --header.background="#020202" --prompt.foreground="#f4005f" --header.foreground="#f4005f" --header "[$(string upper $INPUT_END_NAME)] - (start: $TIME_START)" --placeholder "$INPUT_FORMAT")

    # echo $TIME_START
    # echo $TIME_END

    set START "$TIME_START"

    set OUTPUT_NAME (echo "sample"\_$FILE)
    # set OUTPUT_NAME "$TIME_START_$TIME_END_$FILE"


    # echo $OUTPUT_NAME



    ffmpeg -ss $TIME_START -to $TIME_END -i $FILE -c copy "$OUTPUT_NAME"

end

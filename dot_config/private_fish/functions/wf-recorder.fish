function wf-recorder -w wf-recorder

    set FILE_NAME "$(datetime).mp4"

    switch $argv

        case geo geometry slurp rectangle g
            set GEOMETRY $(slurp)
            command wf-recorder --audio="alsa_output.usb-BEHRINGER_UMC204HD_192k-00.Direct__hw_U192k__sink.monitor" -f "$FILE_NAME" --geometry="$GEOMETRY" $argv

        case '*'
            command wf-recorder --audio="alsa_output.usb-BEHRINGER_UMC204HD_192k-00.Direct__hw_U192k__sink.monitor" -f "$FILE_NAME" $argv
    end


end

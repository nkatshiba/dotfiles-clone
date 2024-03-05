function time-left
    printf "\e[?25l" # Hide cursor
    set target_time (date -d $argv +%s)

    while true
        clear
        set current_time (date +%s)
        set time_left_seconds (math "$target_time - $current_time")

        if test $time_left_seconds -lt 0
            echo "The specified time is in the past."
            printf "\e[?25h" # Show cursor before exiting
            return 1
        end

        set hours (math "floor($time_left_seconds / 3600)")
        set minutes (math "floor(($time_left_seconds % 3600) / 60)")
        set seconds (math "floor($time_left_seconds % 60)")

        set time_string (printf "%02d:%02d:%02d" $hours $minutes $seconds)
        # set_color "#fbc740";
        # set_color "#f92672"
        # set_color "#f4005f"
        # set_color "#ec40fb"
        # set_color "#fb5740"
        # set_color "#bffb40"
        # set_color "#4ffb40"
        # set_color "#74e3b1"
        # set_color "#40fba2"
        # set_color "#74dde3"
        # set_color "#40e4fb"
        # set_color "#4074fb"
        # set_color "#7c40fb"
        # set_color "#9d65ff"
        # set_color "#630fd9"

        set_color "#fb4099"
        figlet $time_string
        set_color normal

        sleep 1
    end
    printf "\e[?25h" # Show cursor before function ends
end


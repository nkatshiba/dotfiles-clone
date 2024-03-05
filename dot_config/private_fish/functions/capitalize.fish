function capitalize
    set -l input $argv[1]
    set -l first_char (string sub -l 1 -- $input | string upper)
    set -l rest_of_string (string sub -s 2 -- $input)
    echo $first_char$rest_of_string
end

function asc
    set -l term_width 90
    set -l str "bind"
    set -l str_length (string length -- $str)
    set -l padding (math --scale=0 "(($term_width - $str_length) / 2)")

    printf '%*s%s%*s\n' $padding '' $str $padding ''
end

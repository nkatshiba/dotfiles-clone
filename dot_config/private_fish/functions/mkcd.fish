#! /usr/bin/env fish
# vim: ft=fish.cfg

# function mkcd --wraps mkdir --description 'alias mkcd=(mkdir && cd)'
#     set DIRNAME $argv[1]
#     mkdir $DIRNAME
#     cd $DIRNAME
#     echo $PWD
#     echo $DIRNAME
# end

function mkcd --wraps mkdir --description "alias mkcd=(mkdir && cd)"
    command mkdir $argv


    if test $status = 0

        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end

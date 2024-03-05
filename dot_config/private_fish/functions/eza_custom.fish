function eza_custom --wraps eza --description 'eza <custom-full> [NO ARGS]'
    
    # init
    set N_STR $(set_color 74dde3;echo "(# of files)>";set_color normal;echo (eza -A | wc -l))
    set PWD_STR $(set_color ffafcc;echo "(path)>";set_color normal;echo $PWD)
    set D_STRC $(set_color 74e3b1;echo "(dirs)>")
    set F_STRC $(set_color fdb777;echo "(files)>";set_color 7e6e96)

    # run
    clear -x

    echo $PWD_STR $N_STR

    echo ""
    echo $D_STRC
    eza -D --classify

    echo ""
    echo $F_STRC
    eza -f --classify

end

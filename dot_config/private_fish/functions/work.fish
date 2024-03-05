function work
    set WORK_DIR $HOME/mpcas/lp3_y1/FFR110_COMPUTATIONAL-BIOLOGY/hws/1/src/1
    set PDFS 'zathura $HOME/mpcas/lp3_y1/FFR110_COMPUTATIONAL-BIOLOGY/hws/1/instructions/instructions.pdf $HOME/mpcas/lp3_y1/FFR110_COMPUTATIONAL-BIOLOGY/hws/1/answers/sol1-1.pdf $HOME/mpcas/lp3_y1/FFR110_COMPUTATIONAL-BIOLOGY/hws/1/answers/sol1-2.pdf'

    cd $WORK_DIR
    clear -x

    echo "$(pwd)\>"
    echo ""
    eza --classify --sort modified -1
    echo ""
    
    abbr -a pdfs "zathura $PDFS"
end

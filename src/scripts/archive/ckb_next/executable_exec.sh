#!/usr/bin/fish

set CKB_NEXT_DIR $HOME/src/scripts/ckb_next
cd $CKB_NEXT_DIR
# poetry env use python3.11
nohup poetry run ckb-next &

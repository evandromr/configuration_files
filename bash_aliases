#!/bin/bash

# add Heasoft wrappers
export PATH="/home/evandro/heasoft/heasoft-6.15.1/heasoft_wrap:$PATH"

# add heainit alias to HEASOFT (to use python with pyxspec)
heainit() {
    export HEADAS=/home/evandro/heasoft/heasoft-6.15.1/x86_64-unknown-linux-gnu-libc2.15-0
    . $HEADAS/headas-init.sh
}

# alias to call CIAO
ciao() {
    source /home/evandro/chandra/ciao-4.6/bin/ciao.bash
}

# add sasinit alias to XMM-SAS
sasinit() {
    export SAS_DIR=/home/evandro/xmm/xmmsas_20131209_1901
    export SAS_CCFPATH=/home/evandro/xmm/ccf
    export SAS_ODF=/home/evandro/xmm/obs
    export SAS_CCF=/home/evandro/xmm/ccf
    . $SAS_DIR/sas-setup.sh
}

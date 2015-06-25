#!/bin/bash

# add Heasoft wrappers
export PATH="/path/to/heasoft_wrap:$PATH"

# add heainit alias to HEASOFT (to use python with pyxspec)
heainit() {
    export HEADAS=/path/to/heasoft-6.16/x86_64-unknown-linux-gnu-libc2.21-0
    . $HEADAS/headas-init.sh
}

# alias to call CIAO
ciao() {
    source /path/to/ciao-4.7/bin/ciao.bash
}

# add sasinit alias to XMM-SAS
sasinit() {
    export SAS_DIR=/path/to/xmmsas_20141104_1833
    export SAS_CCFPATH=/path/to/CALDB/data/xmm/ccf
    export SAS_ODF=/path/to/Data/xmm
    export SAS_CCF=/path/to/CALDB/data/xmm/ccf
    . $SAS_DIR/sas-setup.sh
}

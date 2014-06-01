#!/bin/bash

# add Heasoft wrappers
export PATH="/path/to/heasoft_wrap:$PATH"

# add heainit alias to HEASOFT (to use python with pyxspec)
heainit() {
    export HEADAS=path/to/heasoft-X.xx.x/architeture
    . $HEADAS/headas-init.sh
}

# alias to call CIAO
ciao() {
    source /path/to/ciao-X.X/bin/ciao.bash
}

# add sasinit alias to XMM-SAS
sasinit() {
    export SAS_DIR=/path/to/xmmsas_aaaammdd_hhmm
    export SAS_CCFPATH=/path/to/ccf_dir
    export SAS_ODF=/path/to/obs_dir
    export SAS_CCF=/path/to/ccf_dir
    . $SAS_DIR/sas-setup.sh
}

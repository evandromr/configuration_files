#!/bin/bash

# add heainit alias to HEASOFT (to use python with pyxspec)
heainit() {
#   export HEADAS="/Software/users/xray/headas_64/x86_64-unknown-linux-gnu-libc2.12/"
    export HEADAS="/net/brooks/data/users/ribeiro/Softwares/heasoft-6.17/x86_64-unknown-linux-gnu-libc2.12"
    . $HEADAS/headas-init.sh
}

# alias to call CIAO
ciao() {
    source /Software/users/xray/ciao/bin/ciao.bash
}

# add sasinit alias to XMM-SAS
sasinit() {
    export SAS_DIR=/Software/users/xray/sas
    export SAS_CCFPATH=/Software/users/xray/currentccf
    export SAS_ODF=/data/users/ribeiro/Data/xmm/ODF
    export SAS_CCF=/Software/users/xray/currentccf
    . $SAS_DIR/sas-setup.sh
    sasversion
}

# setup CALDB
export CALDB=/Software/users/xray/caldb
export CALDBCONFIG=$CALDB/software/tools/caldb.config
export CALDBALIAS=$CALDB/software/tools/alias_config.fits
source /Software/users/xray/caldb/software/tools/caldbinit.sh

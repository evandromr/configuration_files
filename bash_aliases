#!/bin/bash

# add Heasoft wrappers
export PATH="$HOME/Work/Softwares/heasoft-6.14/heasoft_wrap:$PATH"

# add heainit alias to HEASOFT (to use python with pyxspec)
heainit() {
    export HEADAS=$HOME/Work/Softwares/heasoft-6.14/x86_64-unknown-linux-gnu-libc2.17-93
    . $HEADAS/headas-init.sh
}

# alias to call CIAO
ciao() {
    export HEADAS=$HOME/Work/Softwares/heasoft-6.14/x86_64-unknown-linux-gnu-libc2.17-93
    export LHEASOFT="$HEADAS"
    export FTOOLS="$HEADAS"
    source $HOME/Work/Softwares/ciao-4.5/bin/ciao.bash
}

# add sasinit alias to XMM-SAS
sasinit() {
    export HEADAS=$HOME/Work/Softwares/heasoft-6.14/x86_64-unknown-linux-gnu-libc2.17-93
    export LHEASOFT="$HEADAS"
    export FTOOLS="$HEADAS"
    export SAS_DIR=$HOME/Work/Softwares/xmmsas_20130501_1901
    export SAS_CCFPATH=$HOME/Work/XMM/CCF
    export SAS_ODF=$HOME/Work/XMM/OBS
    export SAS_CCF=$HOME/Work/XMM/CCF
    . $SAS_DIR/sas-setup.sh
}

# add an Anaconda alias
anaconda() {
export PATH="/home/evandromr/anaconda/bin:$PATH"
}
# an alias direct to the python3 environment of anaconda
anaconda3() {
export PATH="/home/evandromr/anaconda/bin:$PATH"
source activate py3conda
}

# start a python3 local environment
py3env(){
    source $HOME/.localpython/py3env/bin/activate
}

# Starts Ureka environment
ur_setup() {
    eval `/home/evandromr/.ureka/ur_setup -sh $*`
}
# Ends Ureka environment
ur_forget() {
    eval `/home/evandromr/.ureka/ur_forget -sh $*`
}

# show git status and python virtual environments on bash
source $HOME/.bash/gitprompt.sh

# add global menu to gvim
# to avoid warning (don't need in Ubuntu 13.10)
# function gvim () { (/usr/bin/gvim -f "$@" &) }

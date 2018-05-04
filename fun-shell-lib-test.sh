#!/bin/bash
#Autor: Enilton Angelim
#Contato: enilton.angelim@gmail.com
#vim: set ts=4

export LIB_HOME='/home/enilton/workspace/fun-shell'

# Lib functions shell
source $LIB_HOME/fslib/os/index.sh
source $LIB_HOME/fslib/is/index.sh
source $LIB_HOME/fslib/configure/set.sh

# Utility: Docker installer
source $LIB_HOME/util/installDocker.sh

export userInput='teste AUTOMATIZADO'
input
#enviroment.debug
if [[ `input.inverse` == 'TESTE automatizado' ]];then 
    echo 'Input inverse it`s work!'
fi

#enviroment.debug
if ! os.file.path read "/root"; then
    echo 'Path read permisiso it`s work!'
fi

#enviroment.debug
if ! is.ip.v4 113.213.1s3.13 ;then
    echo 'Ip v4 test it`s work!'
fi
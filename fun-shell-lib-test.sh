#!/bin/bash
#Autor: Enilton Angelim
#Contato: enilton.angelim@gmail.com
#vim: set ts=4

source ${PWD}/enviroment/index.sh
source ${PWD}/input/index.sh
source ${PWD}/os/index.sh
source ${PWD}/is/index.sh

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
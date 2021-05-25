#!/bin/bash

export LIB_HOME="/root/fslib"
export log_file=/tmp/log.txt

source is/index.sh
source screen/index.sh

is.file.exists? $log_file && rm $log_file

clear

screen.box.dialog 1 1 'find symbolic links'

function runnable() {
    function process() {
        echo "$1 is link of `readlink -f $1`" >> $log_file
    }

    while read line; do is.file.link? $line && process $line; done <<< `find -L ${1:-/etc}` #-L symbolic links
}

runnable /etc
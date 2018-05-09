function async.run () {
    local command="$1"
    local params=$2
    local paramsLength=`eval echo \\${!$params[@]}`

    exec 7>&1

    (
        coproc myrun {
            for id in $paramsLength;do
                eval echo \${$params[$id]} | $command
            done
        } >&7
    )

    exec 7>&1 7>&-

}; export -f 
function async.search.in () {
    local filename="$1"
    local expression="$2"

    exec 7>&1

    (
        coproc search_in {
            while read line; do
                [[ $line =~ .*${expression}.* ]] && echo $line >&7
            done<$filename
        }
    )

    exec 7>&1 7>&-

}; export -f async.search.in
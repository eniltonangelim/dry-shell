function time.is.date.before? () {
    [[ `time.unix.date.from-datetime "$1"` -lt `time.unix.date.from-datetime "$2"` ]]
}; export -f time.is.date.before?
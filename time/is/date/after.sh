function time.is.date.after? () {
    [[ `time.unix.date.from-datetime "$1"` -gt `time.unix.date.from-datetime "$2"` ]]
}; export -f time.is.date.after?
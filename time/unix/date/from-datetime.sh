function time.unix.date.from-datetime () {
    date -d "$1" +%s
}; export -f time.unix.date.from-datetime
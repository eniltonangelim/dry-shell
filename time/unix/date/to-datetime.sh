function time.unix.date.to-datetime () {
    date -d "@$1"
}; export -f time.unix.date.to-datetime
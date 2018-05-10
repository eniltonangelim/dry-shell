function time.minus.days () {
    date -d "$1  -${2:-0} days"
}; export -f time.minus.days
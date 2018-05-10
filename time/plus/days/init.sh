function time.plus.days () {
    date -d "$1  +${2:-0} days"
}; export -f time.plus.days
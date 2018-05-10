function math.sub () {
    echo $((${1:-0} - ${2:-0}))
}; export -f math.sub
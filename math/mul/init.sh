function math.mul () {
    echo $((${1:-0} * ${2:-0}))
}; export -f math.mul
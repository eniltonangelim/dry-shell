function math.mod () {
    echo $((${1:-0} % ${2:-0}))
}; export -f math.mod
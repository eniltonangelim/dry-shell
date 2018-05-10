function math.div () {
    echo $((${1:-0} / ${2:-1}))
}; export -f math.div
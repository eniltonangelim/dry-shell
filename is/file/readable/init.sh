function is.file.readable? () {
    [ -r ${1:-None} ]
}; export -f is.file.readable?
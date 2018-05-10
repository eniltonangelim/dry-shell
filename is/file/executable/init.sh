function is.file.executable? () {
    [ -x ${1:-None} ]
}; export -f is.file.executable?
function is.file.writable? () {
    [ -w ${1:-None} ]
}; export -f is.file.writable?
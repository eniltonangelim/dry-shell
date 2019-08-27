function is.file.exists? () {
    [ -f ${1:-None} ]
}; export -f is.file.exists?
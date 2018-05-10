function has.file.same.inode? () {
    [ ${1:-None} -ef ${2:-None} ]
}; export -f has.file.same.inode?
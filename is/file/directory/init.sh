function is.file.directory? (){
    [[ -d  ${1:-None} ]]
}; export -f is.file.directory?
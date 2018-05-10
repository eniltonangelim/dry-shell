function is.file.link? (){
    [[ -L  ${1:-None} ]]
}; export -f is.file.link?
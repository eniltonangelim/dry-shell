function is.file.socket? (){
    [[ -L  ${1:-None} ]]
}; export -f is.file.socket?
function is.file.character? (){
    [[ -c  ${1:-None} ]]
}; export -f is.file.character.device?
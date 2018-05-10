function string.lstrip(){
    echo ${1#$2}
}; export -f string.lstrip
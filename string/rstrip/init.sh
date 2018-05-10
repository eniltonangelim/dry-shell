function string.rstrip(){
    echo ${1%$2}
}; export -f string.rstrip
function string.freplace(){
    echo ${1/$2/$3}
}; export -f string.freplace
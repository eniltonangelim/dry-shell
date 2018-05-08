function array.filter() {
    local list=(`eval echo ${1}`)
    local item=${2}
    for fi in ${list[@]};do
        [[ ${fi} =~ ^${item:-null} ]] && echo $fi
    done
}; export -f array.filter
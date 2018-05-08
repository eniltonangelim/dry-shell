function array.contains() {
    local list=(`eval echo ${1}`)
    local item=${2}
    for ci in ${list[@]};do
        [ ${ci} == ${item:-null} ] && return `true`
    done
    return `false`
}; export -f array.contains
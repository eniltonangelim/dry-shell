function array.contains() {
    local listItem=${1}
    local listItemLength=`eval echo \\${!$listItem[@]}`
    local expression="${2}"
    for ci in $listItemLength;do
        [ `eval echo \\${$listItem[$ci]}` == ${expression:-null} ] && return `true`
    done
    return `false`
}; export -f array.contains
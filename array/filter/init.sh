function array.filter() {
    local listItem=${1}
    local listItemLength=`eval echo \\${!$listItem[@]}`
    local expression="${2}"
    for fi in $listItemLength;do
        [[ `eval echo \\${$listItem[$fi]}` =~ ${expression:-null} ]] && eval echo \${$listItem[$fi]}
    done
}; export -f array.filter
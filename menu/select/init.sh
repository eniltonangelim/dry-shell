function menu.select () {
    local PS3="$1"
    local listItens=(${2})
    select item in ${listItens[@]} "Q to quit";do
        case $REPLY in
            [1-9]) echo ${listItens[$[REPLY - 1]]}; break;;
            [qQ]) break;;
        esac
    done
}
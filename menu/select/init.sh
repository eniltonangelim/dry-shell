function menu.select () {
    local PS3="$1"
    local listItens="$2"
    select item in ${listItens[@]} "Q to quit";do
        case $REPLY in
            [0-9]) echo $REPLY; break;;
            [qQ]) break;;
        esac
    done
}
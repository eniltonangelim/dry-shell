#Autor Julio C. Neves
function string.rfill () {
    local string=${1// /^}    # Trocando eventuais espaços preexistentes
    declare -i size=$2
    local char=$3
    local fillString

    printf -v fillString %-${size}s $string
    fillString=${fillString// /$char}
    echo "${fillString//^/ }"        # Restaurando espaços anteriores
}

source $LIB_HOME/screen/box/dialog/top/init.sh
source $LIB_HOME/screen/box/dialog/botton/init.sh
source $LIB_HOME/screen/box/dialog/middle/init.sh

function screen.box.dialog
{
    declare -i indice=0
    declare -i positionY=$1
    declare -i positionX=$2
    local message=${3@E}
    local width=$(( $(wc -L <<< "$message") + 2))   # wc -L dá o tamanho da maior linha
    local lines                                     # Vetor que conterá as linhas (origem 1)

    screen.box.dialog.top $positionY $positionX $width

    while IFS= read line;do
        screen.box.dialog.middle $positionY $positionX $[++indice] "$line"
    done<<<"${message}"

    screen.box.dialog.botton $positionY $positionX $width $[++indice]

    unset indice
}; export -f screen.box.dialog

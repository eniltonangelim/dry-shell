function screen.box.dialog.botton () {
    local positionY=$1
    local positionX=$2
    local width=$3
    local indice=$4
    printf -v line "%${width}s" ' '
    printf -v track "\e(0\x71\e(B"
    tput cup $(($positionY+indice)) $positionX
    printf "\e(0\x6d\e(B"
    echo -n ${line// /$track}                      # Troca todos os espaços de $positionY por $track
    printf "\e(0\x6a\e(B\n"
}
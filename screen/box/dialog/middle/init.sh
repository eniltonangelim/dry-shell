function screen.box.dialog.middle (){
    local positionY=$1
    local positionX=$2
    local indice=$3
    local content="$4"
    tput cup $(($positionY+indice)) $positionX
    printf "\e(0\x78\e(B ${content}"
    tput cup $(($positionY+indice)) $(($positionX + width +1))
    printf "\e(0\x78\e(B"
}
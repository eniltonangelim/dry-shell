function screen.box.dialog.top () {
    local positionY=$1
    local positionX=$2
    local width=$3
    printf -v line "%${width}s" ' '                 # Cria $width espaços em $line
    printf -v track "\e(0\x71\e(B"                  # Põe um traço semigráfico em $track
    tput cup $positionY $positionX
    printf "\e(0\x6c\e(B"                           # Canto superior esquerdo
    echo -n ${line// /$track}                       # Troca todos os espaços de $line por $track
    printf "\e(0\x6b\e(B\n"                         # Canto superior direito
}
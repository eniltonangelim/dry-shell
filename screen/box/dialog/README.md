# Agradecimento

Obrigado `Julio C. Neves` pela contribuição e disponibilização do código abaixo.

Código original:

```bash
function DesenhaCaixaComTexto
{
        #  Desenha uma caixa
        #+     1o. parâmetro: Linha
        #+     2o. parâmetro: Coluna
        #+     3o. parâmetro: Texto que ficará na caixa (se quiser multilinha tem de mandar com os <ENTER> em $3)
    local i
    local Texto=$(echo -e "$3")
    local Largura=$(( $(wc -L <<< "$Texto") + 2))   # wc -L dá o tamanho da maior linha
    local Linhas                                    # Vetor que conterá as linhas (origem 1)
    for ((i=1; i<=$(wc -l <<< "$Texto"); i++))
    {
        Linhas[i]=$(head -$i <<< "$Texto" | tail -1)
    }
    printf -v Linha "%${Largura}s" ' '              # Cria $Largura espaços em $Linha
    printf -v Traco "\e(0\x71\e(B"                  # Põe um traço semigráfico em $Traco
    tput cup $1 $2; printf "\e(0\x6c\e(B"           # Canto superior esquerdo
    echo -n ${Linha// /$Traco}                      # Troca todos os espaços de $Linha por $Traco
    printf "\e(0\x6b\e(B\n"                         # Canto superior direito
    for  ((i=1; i<=$(wc -l <<< "$Texto"); i++))     # Construindo altura
    do
        tput cup $(($1+i)) $2
        printf "\e(0\x78\e(B ${Linhas[i]}"          # Barra vertical esquerda + texto
        tput cup $(($1+i)) $(($2 + Largura +1))
        printf "\e(0\x78\e(B"                       # Barra vertical direita
    done
    printf -v linha "%${Largura}s" ' '
    printf -v traco "\e(0\x71\e(B"
    tput cup $(($1+i)) $2; printf "\e(0\x6d\e(B"
    echo -n ${Linha// /$Traco}                      # Troca todos os espaços de $Linha por $Traco
    printf "\e(0\x6a\e(B\n"
}; export -f DesenhaCaixaComTexto

```
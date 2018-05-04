function os.io.log ()
{
    if  [ $3 ]  &&  [[ $3 =~ ^[[:digit:]]$ ]] ;then
        exec 6<&1
        exec 1>>/var/log/$1
        case $3 in
                0) printf "%i@:@ OK - %s @+@ %i %i\n"   "$(date +%s)"  "$2" "$3" "$4"  ; exec 1<&6 ;;
                1) printf "%i@:@ WARNING - %s @+@ %i %i\n"  "$(date +%s)"  "$2" "$3" "$4" ; exec 1<&6 ;;
                2) printf "%i@:@ CRITICAL - %s @+@ %i %i\n" "$(date +%s)"  "$2" "$3" "$4" ; exec 1<&6 ;;
                *) exec 1<&6 ;;
        esac
    else
        printf "Aviso: <script> <message> <id-nagios(0,1,2)> <time>\n"
    fi
} ; export -f os.io.log
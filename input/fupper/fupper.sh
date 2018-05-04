function input.fupper(){
    local userInput=`input.get`
    echo ${userInput^}
}; export -f input.fupper
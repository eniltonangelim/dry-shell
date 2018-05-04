function input.upper(){
    local userInput=`input.get`
    echo ${userInput^^}
}; export -f input.upper
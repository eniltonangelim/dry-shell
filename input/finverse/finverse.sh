function input.finverse(){
    local userInput=`input.get`
    echo ${userInput~}
}; export -f input.finverse
function input.inverse(){
    local userInput=`input.get`
    echo ${userInput~~}
}; export -f input.inverse
function input.lower(){
    local userInput=`input.get`
    echo ${userInput,,}
}; export -f input.lower
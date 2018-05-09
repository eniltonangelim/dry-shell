# Clean code is missing
# Dead code  mode on xD
function network.ip.v4.list (){
    local listAddress=()
    local i
    while read line;do 
        [[ $line =~ .*\|\-\-.*[1-9]{1,3}$ ]] &&\
            ! [[ $line =~ .*255$ ]] && {
                ! array.contains \${listAddress[@]} ${line#\|\-\-} && listAddress[$[i++]]=${line#\|\-\- }
            }
    done</proc/net/fib_trie
    echo ${listAddress[@]}
}; export -f network.ip.v4.list 
function enviroment.debug()
{
    local opt
    for opt in  functrace verbose xtrace errtrace;do
        set -o "$opt"
    done 
    set -x
}; export -f enviroment.debug
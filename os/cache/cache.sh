function os.cache()
{
    # Cria arquivo de cache com o endereco/caminho dos arquivos
    local cname="$2"
    local f13_path="/tmp"
    export fp_cache="$f13_path/$cname"

    if ! os.file.path file $fp_cache ; then
        ls -d1 ${1%/}/* > $fp_cache 
        unset cname f13_path
        return $(true)
    elif os.file.path file $fp_cache; then
        return $(true)
    else
        unset cpath cname f13_path
        return $(false)
    fi
} ; export -f os.cache
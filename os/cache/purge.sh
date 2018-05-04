
function os.cache.purge() {
    local path="$1"
    local period="$2"
    local string="$3"
    local force="$4"

    if [ "$path" ];then
        find "$path" -maxdepth 1 -type f -mtime +$period -iname "$string" -exec rm ${force:+-f} {} \; 
    fi
}; export -f os.cache.purge
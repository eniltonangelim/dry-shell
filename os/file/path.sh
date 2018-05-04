function os.file.path()
{
    check_path()

    {  
        if [ $1 "$2" ];then   
            true
        else   
            false
        fi
    }
    
    case $1 in
        'file')  check_path "-f" "$2";;
        'dir')   check_path "-d" "$2";;
        'size')  check_path "-s" "$2";;
        'write') check_path "-w" "$2";;
        'read')  check_path "-r" "$2";;
    esac
} ; export -f os.file.path
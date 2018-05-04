function os.file.compress()
{
    tar -cjpf "$1" "$2" "$3" 
}; export -f os.file.compress
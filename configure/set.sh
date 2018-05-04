function configure.set()
{
    if   ( [[  "$1" =~ ^%%[[:upper:]].+%% ]] || [ ${permission:-allow} == 'allow' ] ) && [  -n "$2"  ];
    then  
    echo -n "| Setted ${4//_/ } in ${3//*\//}..." ; sleep 0.1
        if sed -i --posix "s|$1|$2|g"  $3 2>/dev/null ;
        then
            echo -e "\e[32;2m done\e[m"
            return $(true)
        else
            echo -e "\e[31;2m fail\e[m"
            return $(false)
        fi
    else
        echo "Default"
    fi
}; export -f configure.set
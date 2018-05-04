function enviroment.extension()
{
    for opt in extglob extquote cmdhist expand_aliases force_fignore histappend progcomp promptvars sourcepath ; do
        shopt -s $opt
    done
}; export -f enviroment.extension 
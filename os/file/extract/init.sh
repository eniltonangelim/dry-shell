os.file.extract () {
    exec 2>/dev/null
    case $1 in
        *.tar.bz2)
            tar xvjf $1 && return `true`;;
        *.tar.gz)
            tar xvzf $1 && return `true`;;
        *.tar)
            tar xvf $1  && return `true`;;
        *.tbz2)
            tar xvjf $1 && return `true`;;
        *.tgz)
            tar xvzf $1 && return `true`;;
        *) return `false`;;
    esac
    return `false`
}; export -f os.file.extract
function time.range.in-seconds () {
    local begin=${1:-10}
    local end=${2:-1}
    local formatTime=${3:-'%Y-%m-%d %H:%M'}
    time.range.strategy $begin $end 'seconds' "$formatTime" 
}; export -f time.range.in-seconds
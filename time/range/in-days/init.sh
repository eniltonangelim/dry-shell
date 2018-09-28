function time.range.in-days () {
    local begin=${1:-10}
    local end=${2:-1}
    local formatTime=${3:-'%Y-%m-%d %H:%M'}
    time.range.strategy $begin $end 'days' "$formatTime" 
}; export -f time.range.in-days
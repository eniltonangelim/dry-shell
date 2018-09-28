function time.range.strategy () {
    local begin=${1:-10}
    local end=${2:-1}
    local unitTime=${3:-minutes}
    local formatTime=${4:-'%Y-%m-%d %H:%M'}
    eval echo {$begin..$end} | xargs -I{} -d ' ' date --date={}" ${unitTime} ago" "+$formatTime"
}; export -f time.range.strategy
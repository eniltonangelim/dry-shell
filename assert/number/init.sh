function assert.number() {
    local value=$1
    local thisValue=$2
    local message="$3"
    [ $value -ne $thisValue ] && {
        echo $message
        exit `false`
    }
    return `true`
}; export -f assert.number
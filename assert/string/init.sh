function assert.string() {
    local value="$1"
    local thisValue="$2"
    local message="$3"
    [ "$value" != "$thisValue" ] && {
        echo $message
        exit `false`
    }
    return `true`
}; export -f assert.string
function mail.connection.smtp () {
    local host=${1}
    local port=${2}
    local ehlo="${3}"
    local command="${4}"
    exec 5<>/dev/tcp/$host/$port
    echo -e "$ehlo\r" >&5
    echo -e "$command\r" >&5
    cat <&5
    exec 5>&-
}
function mail.test.verify () {
    mail.connection.smtp "$1" "$2" "$3" "vrfy $4"
}
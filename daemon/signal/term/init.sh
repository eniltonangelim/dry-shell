trap daemon.signal.term SIGTERM
function daemon.signal.term (){
    echo "Term kill"
    exit 15;
}; export -f daemon.signal.term
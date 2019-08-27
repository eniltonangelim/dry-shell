trap daemon.signal.kill SIGKILL
function daemon.signal.kill (){
    echo "Kill demo"
    exit 9;
}; export -f daemon.signal.kill
function input()
{
    local msg="${1:-Input: }"
    export userInput

    while [ -z  "$userInput"  ];do
        read -p "$msg " userInput
    done

    source $LIB_HOME/input/get/get.sh
    source $LIB_HOME/input/finverse/finverse.sh
    source $LIB_HOME/input/flower/flower.sh
    source $LIB_HOME/input/fupper/fupper.sh
    source $LIB_HOME/input/inverse/inverse.sh
    source $LIB_HOME/input/lower/lower.sh
    source $LIB_HOME/input/unset/unset.sh
    source $LIB_HOME/input/upper/upper.sh

}; export -f input
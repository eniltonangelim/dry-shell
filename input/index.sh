function input()
{
    local msg="${1:-Input: }"
    export userInput

    while [ -z  "$userInput"  ];do
        read -p "$msg " userInput
    done

    source $LIB_HOME/fslib/input/get/get.sh
    source $LIB_HOME/fslib/input/finverse/finverse.sh
    source $LIB_HOME/fslib/input/flower/flower.sh
    source $LIB_HOME/fslib/input/fupper/fupper.sh
    source $LIB_HOME/fslib/input/inverse/inverse.sh
    source $LIB_HOME/fslib/input/lower/lower.sh
    source $LIB_HOME/fslib/input/unset/unset.sh
    source $LIB_HOME/fslib/input/upper/upper.sh

}; export -f input
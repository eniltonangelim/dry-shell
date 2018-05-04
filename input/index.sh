function input()
{
    local msg="${1:-Input: }"
    export userInput

    while [ -z  "$userInput"  ];do
        read -p "$msg " userInput
    done

    source ${PWD}/input/get/get.sh
    source ${PWD}/input/finverse/finverse.sh
    source ${PWD}/input/flower/flower.sh
    source ${PWD}/input/fupper/fupper.sh
    source ${PWD}/input/inverse/inverse.sh
    source ${PWD}/input/lower/lower.sh
    source ${PWD}/input/unset/unset.sh
    source ${PWD}/input/upper/upper.sh

}; export -f input
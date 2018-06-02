#!/bin/bash
# Autor: Enilton Angelim
export LIB_HOME="./"
source ${LIB_HOME}/math/index.sh
source ${LIB_HOME}/assert/number/init.sh
source ${LIB_HOME}/assert/string/init.sh
source ${LIB_HOME}/string/index.sh


assert.number `math.add 3 7` 10 "A função não retornou o resultado esperado, 10. Resultado: `math.add 3 7`"
assert.string `string.flower ABCDEF` 'aBCDEF' "A função não retornou o resultado esperado, aBCDEF. Resultado: `string.flower ABCDEF`"
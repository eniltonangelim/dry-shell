# Don't repeat yourself (DRY)

Adicione a biblioteca no seu projeto

```
git submodule add ssh://git@gitlab.f13.com.br:7222/sysadmin/fun-shell.git fslib
```

Exemplo

```bash
export LIB_HOME='/home/enilton/workspace/fun-shell'

# Lib functions shell
source $LIB_HOME/os/index.sh
source $LIB_HOME/is/index.sh
source $LIB_HOME/configure/set.sh

# Utility: Docker installer
source $LIB_HOME/util/installDocker.sh

export userInput='teste AUTOMATIZADO'
input
#enviroment.debug
if [[ `input.inverse` == 'TESTE automatizado' ]];then 
    echo 'Input inverse it`s work!'
fi

#enviroment.debug
if ! os.file.path read "/root"; then
    echo 'Path read permisiso it`s work!'
fi

#enviroment.debug
if ! is.ip.v4? 113.213.1s3.13 ;then
    echo 'Ip v4 test it`s work!'
fi


:heart:


~/workspace/fun-shell$ is.email? 113.213.13.1s3 && { echo sim  ;} || echo não
> não

~/workspace/fun-shell$ is.email? dasdas@dsadas && { echo sim  ;} || echo não
> não

~/workspace/fun-shell$ is.email? dasdas@dsadas.com && { echo sim  ;} || echo não
> sim

~/workspace/fun-shell$ time.unix.to-datetime 1521451449
> Mon Mar 19 06:24:09 -03 2018

~/workspace/fun-shell$ time.unix.from-datetime "Mon Mar 19 06:24:09 -03 2018"
> 1521451449

~/workspace/fun-shell$ is.ip.v4? 113.213.13.13 && { echo sim  ;} || echo não
> sim

~/workspace/fun-shell$ is.ip.v4? 113.213.13.1s3 && { echo sim  ;} || echo não
> não

~/workspace/fun-shell$ time.is.date.after? 'Fri May  4 16:18:08' 'Fri May  4 16:18:08' ; echo $?
> 1

~/workspace/fun-shell$ time.is.date.after? 'Fri May  4 17:18:08' 'Fri May  4 16:18:08' ; echo $?
> 0

~/workspace/fun-shell$ time.is.date.before? 'Fri May  4 16:18:09' 'Fri May  4 16:18:08' && echo sim || echo não
> não

~/workspace/fun-shell$ time.is.date.before? 'Fri May  4 16:18:04' 'Fri May  4 16:18:08' && echo sim || echo não
> sim

```
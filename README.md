# Don't repeat yourself (DRY)

Adicione a biblioteca no seu projeto

```
git submodule add ssh://git@gitlab.f13.com.br:7222/sysadmin/fun-shell.git fslib
```

## Documentation (coming soon)

```bash
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

nomes=( enilton patricia joao erica paulo junior julho )
~/workspace/fun-shell$ array.filter \${nomes[@]}  e
> enilton
> erica
~/workspace/fun-shell$ array.filter \${nomes[@]}  j
> joao
> junior
> julho
~/workspace/fun-shell$ array.filter \${nomes[@]}  ju
> junior
> julho

menu.select "Escolha o IP: " "`network.ip.v4.list`"
1) 10.254.252.56
2) 127.0.0.1
3) 172.17.0.1
4) 192.168.124.101
5) Q to quit
Escolha o IP: 2
> 2

```
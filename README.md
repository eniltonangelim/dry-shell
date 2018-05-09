# Don't repeat yourself (DRY)

Adicione a biblioteca no seu projeto

```
git submodule add https://github.com/eniltonangelim/dry-shell.git fslib
```

## Documentation (coming soon)


### String functions

`source string/index.sh`

First uppercase

```bash
~$ string.fupper foo bar baz
Foo Bar Baz
```

Uppercase

```bash
~$ string.upper foo bar baz
```

First lowercase

```bash
~$ string.flower FOO BAR BAZ
> fOO bAR bAZ
```

Lowercase

```bash
~$ string.lower FOO BAR BAZ
> foo bar baz
```

Other(s):

- string.flower STRING
- string.inverse STRING
- string.finverse STRING
- string.fupper STRING
- string.lower STRING
- string.upper STRING

## Tests

- email

```bash
~$ is.email? 113.213.13.1s3
> false
```

```bash
~$ is.email? dasdas@dsadas
> false
```

```bash
~$ is.email? dasdas@dsadas.com
> true
```

- IPv4

```bash
~$ is.ip.v4? 113.213.13.13
> true
```

```bash
~$ is.ip.v4? 113.213.13.1s3
> false
```

## Date functions

Unixtimestamp to datetime

```bash
~$ time.unix.to-datetime 1521451449
> Mon Mar 19 06:24:09 -03 2018
```

Datetime to unixtimestamp

```bash
~$ time.unix.from-datetime "Mon Mar 19 06:24:09 -03 2018"
> 1521451449
```

Relative position of two Datetime instances

- After

```bash
~$ time.is.date.after? 'Fri May  4 16:18:08' 'Fri May  4 16:18:08'
> false
```

```bash
~$ time.is.date.after? 'Fri May  4 17:18:08' 'Fri May  4 16:18:08'
> true
```

- Before

```bash 
~$ time.is.date.before? 'Fri May  4 16:18:09' 'Fri May  4 16:18:08'
> false
```

```bash
~$ time.is.date.before? 'Fri May  4 16:18:04' 'Fri May  4 16:18:08'
> true
```

## Array functions

var `nomes=( enilton patricia joao erica paulo junior julho )`

- filter

```bash
~$ array.filter \${nomes[@]}  e
> enilton
> erica
```

```bash
~$ array.filter \${nomes[@]}  j
> joao
> junior
> julho
```

```bash
~$ array.filter \${nomes[@]}  ju
> junior
> julho
```

- contains

```bash
~$ array.contains \${nomes[@]} enilton
> true
```

```bash
$ array.contains \${nomes[@]} amy
> false
```

## Menu

- select

```bash
~$ menu.select "Choose the IP: " "`network.ip.v4.list`"
1) 10.254.252.56
2) 127.0.0.1
3) 172.17.0.1
4) 192.168.124.101
5) Q to quit
Choose the IP: 2

> 127.0.0.1
```

## Network

## Mail

## Configure

## OS

## async
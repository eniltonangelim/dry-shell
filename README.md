# Don't repeat yourself (DRY)

Adicione a biblioteca no seu projeto

```
git submodule add https://github.com/eniltonangelim/dry-shell.git fslib
```

Configure a localização da biblioteca

```
export LIB_HOME="path/to/fslib"
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

| Name             | Param #1 | Param #2 | Param #3 |
|:-----------------|:--------:|:--------:|:--------:|
| string.flower    |   TEXT   |          |          |
| string.inverse   |   TEXT   |          |          |
| string.finverse  |   TEXT   |          |          |
| string.fupper    |   TEXT   |          |          |
| string.lower     |   TEXT   |          |          |
| string.upper     |   TEXT   |          |          |
| string.lstrip    |   TEXT   | DEL STR  |          |
| string.rstrip    |   TEXT   | DEL STR  |          |
| string.freplace  |   TEXT   | OLD STR  | NEW STR  |
| string.replace   |   TEXT   | OLD STR  | NEW STR  |


## Tests

`source is/index.sh`

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

Other(s):

- number
- email
- ip.v4

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

Datetime sequence Strategy (protocol)

20 minutes ago

```
time.range.strategy 20 1 'minutes' '%h %y %m:%d %H:%M:%S'
```

20 hours ago

```
time.range.strategy 20 1 'hours' '%h %y %m:%d %H:%M:%S'
```

20 days ago

```
time.range.strategy 20 1 'days' '%h %y %m:%d %H:%M:%S'
```

Datetime sequence In minutes

```
time.range.in-minutes '' '' '%Y-%m-%d %H:%M:%S'
```

```
time.range.in-minutes 23 '' '%Y-%m-%d %H:%M:%S'
```

```
time.range.in-minutes 23 3 '%Y-%m-%d %H:%M:%S'
```

Other's:

- time.range.in-seconds
- time.range.in-hours
- time.range.in-days

## Array functions

var `nomes=( enilton patricia joao erica paulo junior julho )`

- filter

```bash
~$ array.filter nomes  e
> enilton
> erica
```

```bash
~$ array.filter nomes  j
> joao
> junior
> julho
```

```bash
~$ array.filter nomes  ju
> junior
> julho
```

- contains

```bash
~$ array.contains nomes enilton
> true
```

```bash
$ array.contains nomes amy
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

## async


- Search expression in file

`~$ time async.search.in /var/log/syslog "firefox" && async.search.in /var/log/syslog cron`

```text
real    0m0.004s
user    0m0.003s
sys     0m0.001s
May 9 00:08:06 note01-dev anacron[8593]: Job `cron.daily' terminated
~/workspace/fun-shell$ May 9 00:12:56 f13note01-dev anacron[8593]: Job `cron.weekly' started
May 9 00:12:56 note01-dev anacron[13060]: Updated timestamp for job `cron.weekly' to 2018-05-09
...
May 9 08:02:56 note01-dev systemd[1]: Started Run anacron jobs.
May 9 09:35:04 note01-dev firefox[7482]: ../../../../gobject/gsignal.c:3492: signal name 'selection_changed' is invalid for instance '0x7fe224c6d3d0' of type 'MaiAtkType319'
May 9 08:02:56 note01-dev anacron[17845]: Anacron 2.3 started on 2018-05-09
May 9 09:36:00 note01-dev firefox[7482]: message repeated 34 times: [ ../../../../gobject/gsignal.c:3492: signal name 'selection_changed' is invalid for instance '0x7fe224c6d3d0' of type 'MaiAtkType319']
```

- Run any async-command

```bash
~$ testeA=("ckr domain foobar.com.br enilton@foobar.com.br adminLoginAs" "ckr domain foobar.com.br a@foobar.com.br adminLoginAs" "ckr domain foobar.com.br b@foobar.com.br adminLoginAs" "ckr domain foobar.com.br c@foobar.com.br adminLoginAs")
~$ async.run zmprov testeA
~$ prov> ckr domain foobar.com.br enilton@foobar.com.br adminLoginAs
ALLOWED
prov> prov> ckr domain foobar.com.br a@foobar.com.br adminLoginAs
ALLOWED
prov> prov> ckr domain foobar.com.br b@foobar.com.br adminLoginAs
ALLOWED
prov> prov> ckr domain foobar.com.br c@foobar.com.br adminLoginAs
ALLOWED
prov> 
```

## Screen dialog

`source screen/index.sh`

```bash
~$ screen.box.dialog 1 1 'Hello World!\n\Willkommen!'

 ┌──────────────┐
 │ Hello World! │
 │ Willkommen!  │
 └──────────────┘
```

## Network

## Mail

## Configure

## OS

## Enviroment

## has

`source math/index.sh`

- Test inodes:

```bash
has.file.same.inode? /etc/hosts /etc/hosts.deny 
```

## math

`source math/index.sh`

- add

```bash
math.add 12 31
```

- div

```bash
 math.div 10 2
```

- mod

```bash
math.mod 10 2
```

- mul

```bash
math.mul 10 3
```

- pow

```bash
math.pow 
```

- sub

```bash
math.sub 5 3
```

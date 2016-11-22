Week 2 report
---

### Ex. 1
#### TAR
_Using last weeks scripts_
```bash
sorja:week2 sorja$ tar cjf foo.tar.bz2 *sh
sorja:week2 sorja$ tar czf bar.tar.gz *sh

sorja:week2 sorja$ stat bar.tar.gz foo.tar.bz2
16777220 4655238 -rw-r--r-- 1 sorja staff 0 772 "Nov 21 16:03:58 2016" "Nov 21 16:03:58 2016" "Nov 21 16:03:58 2016" "Nov 21 16:03:58 2016" 4096 8 0 bar.tar.gz
16777220 4655214 -rw-r--r-- 1 sorja staff 0 867 "Nov 21 16:03:37 2016" "Nov 21 16:03:31 2016" "Nov 21 16:03:31 2016" "Nov 21 16:03:31 2016" 4096 8 0 foo.tar.bz2
```

```bash
sorja:week2 sorja$ tar cf - *sh |  gzip > bar2.tar.gz
```

### Ex. 2
#### Local and network file systems
```bash
Filesystem      Size   Used  Avail Capacity iused      ifree %iused  Mounted on
/dev/disk1     233Gi   80Gi  152Gi    35% 1380929 4293586350    0%   /
devfs          332Ki  332Ki    0Bi   100%    1150          0  100%   /dev
map -hosts       0Bi    0Bi    0Bi   100%       0          0  100%   /net
map auto_home    0Bi    0Bi    0Bi   100%       0          0  100%   /home
```

#### Fetch and extract
```bash
sorja:week3 sorja$ curl -s  https://wiki.helsinki.fi/download/attachments/124126879/lost24-monitor-temps-and-fans-v2.tar.bz2 | tar xj
sorja:week3 sorja$ ls
REPORT.md lost24
```

#### Doing your business somewhere else
```bash
sorja:week3 sorja$ ssh -F proxyConfig ukko "wget https://wiki.helsinki.fi/download/attachments/124126879/lost24-monitor-temps-and-fans-v2.tar.bz2"
--2016-11-22 14:40:52--  https://wiki.helsinki.fi/download/attachments/124126879/lost24-monitor-temps-and-fans-v2.tar.bz2
Resolving wiki.helsinki.fi (wiki.helsinki.fi)... 128.214.205.178
Connecting to wiki.helsinki.fi (wiki.helsinki.fi)|128.214.205.178|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2393697 (2.3M) [application/x-bzip]
Saving to: `lost24-monitor-temps-and-fans-v2.tar.bz2'

     0K .......... .......... .......... .......... ..........  2% 11.5M 0s
    50K .......... .......... .......... .......... ..........  4% 11.8M 0s
                     [ ... output is cut ... ] 
  2250K .......... .......... .......... .......... .......... 98% 11.6M 0s
  2300K .......... .......... .......... .......              100% 13.0M=0.2s

2016-11-22 14:40:53 (11.0 MB/s) - `lost24-monitor-temps-and-fans-v2.tar.bz2' saved [2393697/2393697]

sorja:week3 sorja$ ssh -F proxyConfig ukko 'ls'
hello
lost24-monitor-temps-and-fans-v2.tar.bz2
sorja:week3 sorja$ ssh -F proxyConfig ukko 'cat lost24-monitor-temps-and-fans-v2.tar.bz2' | tar xj -
sorja:week3 sorja$ ls
REPORT.md   lost24      proxyConfig
sorja:week3 sorja$ du -sh lost24/
974M	lost24/
```

### Ex. 3
#### GREP and CUT
```bash
sorja:week3 sorja$ find lost24/monitor/2011.12.25 -name "*temp*" | xargs grep PROCESSOR_ZON | cut -d ' ' -f16 | cut -d '/' -f1 | sort | uniq | tail -r
31C
30C
29C
28C
27C
26C
25C
24C
23C
22C
```

#### Don't run with the scissors
_Note_  
On OS X you have to use -E instead of -R to get regular expressions
>      -E      Interpret regular expressions as extended (modern) regular
>	         expressions rather than basic regular expressions (BRE's).  The
>	         re_format(7) manual page fully describes both formats.

```bash
... | sed -E -e 's/ +/,/g'
```

### Ex. 4
#### Too long to read
```bash
sorja:week3 sorja$ cd lost24/monitor/
sorja:monitor sorja$ ls */*/hp-temps.txt
-bash: /bin/ls: Argument list too long
```

```bash
sorja:week3 sorja$ find lost24/monitor/2011.11.* -name *temp*
lost24/monitor/2011.11.01/00:00/hp-temps.txt
lost24/monitor/2011.11.01/00:05/hp-temps.txt
lost24/monitor/2011.11.01/00:10/hp-temps.txt
lost24/monitor/2011.11.01/00:15/hp-temps.txt
lost24/monitor/2011.11.01/00:20/hp-temps.txt
lost24/monitor/2011.11.01/00:25/hp-temps.txt
lost24/monitor/2011.11.01/00:30/hp-temps.txt
lost24/monitor/2011.11.01/00:35/hp-temps.txt
lost24/monitor/2011.11.01/00:40/hp-temps.txt
lost24/monitor/2011.11.01/00:45/hp-temps.txt
lost24/monitor/2011.11.01/00:50/hp-temps.txt
lost24/monitor/2011.11.01/00:55/hp-temps.txt
lost24/monitor/2011.11.01/01:00/hp-temps.txt
lost24/monitor/2011.11.01/01:05/hp-temps.txt
lost24/monitor/2011.11.01/01:10/hp-temps.txt
lost24/monitor/2011.11.01/01:15/hp-temps.txt
        [ ... output is cut ... ] 
lost24/monitor/2011.11.30/23:20/hp-temps.txt
lost24/monitor/2011.11.30/23:25/hp-temps.txt
lost24/monitor/2011.11.30/23:30/hp-temps.txt
lost24/monitor/2011.11.30/23:35/hp-temps.txt
lost24/monitor/2011.11.30/23:40/hp-temps.txt
lost24/monitor/2011.11.30/23:45/hp-temps.txt
lost24/monitor/2011.11.30/23:50/hp-temps.txt
lost24/monitor/2011.11.30/23:55/hp-temps.txt
sorja:week3 sorja$ find lost24/monitor/2011.11.* -name *temp* | wc -l
    8640
```
#### Escape as a true friend
_Using the example given_
```bash
$ touch footest.txt
$ find . -name *test.txt
$ find . -name '*test.txt'
$ touch bartest.txt
$ find . -name *test.txt
# this fails
$ find . -name '*test.txt'
```
>\* is expanded by the shell before the command-line is passed to find(1). If there's only 1 item in the directory, then it works. If there's more than one item in the directory, then it fails as the command-line options are no longer correct.
>[source](https://forums.freebsd.org/threads/29885/)

### Ex. 3
#### GREP and CUT
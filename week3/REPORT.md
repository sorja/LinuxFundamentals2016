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
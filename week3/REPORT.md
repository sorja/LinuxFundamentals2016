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
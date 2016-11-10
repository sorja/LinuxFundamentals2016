Week 1 report
---

### Ex. 1  
```
sorja:~ sorja$ ls . asd 1> foo 2> bar
sorja:~ sorja$ cat foo
.:
Applications
Desktop
Documents
Downloads
Envs
Library
Movies
Music
Pictures
Public
bar
foo
sorja:~ sorja$ cat bar
ls: asd: No such file or directory
```  

```
sorja:~ sorja$ wc -l

woot
woot
woot
       4
sorja:~ sorja$ cat
woot
woot
woot
woot
woot
woot
```
Looks like `cat` is waiting for input, and as soon as input is received, it writes it out to `stdout`

### Ex. 2
#### Pipelines
```
sorja:~ sorja$ wc -l foo
      15 foo
sorja:~ sorja$ ls | wc -l
      15
```  
_Only directories_
```
sorja:~ sorja$ ls -d */ | wc -l
      11
sorja:~ sorja$ ls -d */ > bar
sorja:~ sorja$ wc -l bar
      11 bar
sorja:~ sorja$
```
#### Filters
```
sorja:~ sorja$ ls | grep 'e' | wc -l
       4
```
#### Interlude: Bash
[count-homedir.sh](count-homedir.sh)

### Ex. 3
#### Some assembly required
[lists-all-files-and-subdirectories-from-November-2011.sh](lists-all-files-and-subdirectories-from-November-2011.sh)

#### Now we want only the pictures
[lists-all-files-and-subdirectories-from-November-2011-only-jpgs.sh](lists-all-files-and-subdirectories-from-November-2011-only-jpgs.sh)

#### How many do we have to far ?
[lists-all-files-and-subdirectories-from-November-2011-count-jpgs.sh](lists-all-files-and-subdirectories-from-November-2011-count-jpgs.sh)

#### Remember the backticks
_Note_ Using the newer ` $() ` convetion instead of backticks ( ` )  
[amount-of-pics-current-month.sh](amount-of-pics-current-month.sh)


Week 2 report
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
If you want to 'pipe' the output to wc, you should use comma ( `;` ) instead of pipe, because the output is not deterministic!
```
sorja:~ sorja$ ls -d */ > bar ; wc -l bar
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

#### Combine everything
[lists-all-jpg-files-of-current-month-using-ls.sh](lists-all-jpg-files-of-current-month-using-ls.sh)

### Ex. 4
#### The big brother of `ls`
[lists-all-jpg-files-of-current-month-using-find.sh](lists-all-jpg-files-of-current-month-using-find.sh)

### Ex. 5
#### Introduction to variables
`$PWD`  
The current working directory as set by the cd command.  
`PS1`  
_The value  of  this parameter is expanded (see PROMPTING below)and used as the primary prompt string.   The  default  value  is``\s-\v\$ ''._  
For example `sorja:LinuxFundamentals2016 sorja$`  
`SHELL`  
_The full pathname to the shell is kept in this environment vari-able.  If it is not set when the shell starts, bash  assigns  toit the full pathname of the current user's login shell._  
I think this defaults to /bin/bash on most systems

#### Special Shell variables
[echo.sh](echo.sh)

#### The difference between Bash and Bash
[variable-visibility.sh](variable-visibility.sh)

#### Remote invocation
[remote-invocation.sh](remote-invocation.sh)

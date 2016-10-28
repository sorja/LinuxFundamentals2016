Week 1 report
---

Ex. 3  
```
$ mkdir -p linuxfundamentals2015/week1  
$ cd linuxfundamentals2015/week1
```  

Ex 4.  
```
alias ls='ls -G'
alias ll='ls -lG'
```

Ex 5.
```
# .. 
# omit other stuff
# ...

#\ls to skip
alias ls='ls -G'
alias ll='ls -lG'
```

Ex 6.
a)
```
$ ssh users.cs.helsinki.fi  
$ ukko004.hpc.cs.helsinki.fi
```  

b)
```
$ ssh ukko004.hpc.cs.helsinki.fi ls -lG
```

c)
```
$ cat '~/.ssh/key.pub' > pbcopy
$ ssh ukko004.hpc.cs.helsinki.fi
$ echo 'key' >> ~/.ssh/authorizd_keys
```

Ex 7.

.bashrc;
```
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
```

.bash_aliases
```
alias ls='ls -G'
alias ll='ls -lG'
```




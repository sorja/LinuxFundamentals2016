Week 1 report
---

### Ex. 3  
```
$ mkdir -p Linuxfundamentals2016/week1  
$ cd Linuxfundamentals2016/week1
```  

### Ex 4.  
```
alias ls='ls -G'
alias ll='ls -lG'
```

### Ex 5.
```
# .. 
# omit other stuff
# ...

#\ls to skip
alias ls='ls -G'
alias ll='ls -lG'
```

### Ex 6.
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

### Ex 7.
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

Having the snippet for invoking ~/.bash_aliases in .bashrc, requires you to 'login' to the shell. Ex. ssh mxo@users.cs.helsinki.fi.
If you have the invokation only there, and you write ex. `ssh mxo@users.cs.helsinki.fi ls -la`, the aliases are not loaded, therefore the colors stay the same.
To get the aliases/invoke commands when you just throw commands to ssh, you need to dump them/invoke them in ~/.bash_profile

### Ex 8.
```
ssh sorja@users.cs.helsinki.fi hostname > ~/LinuxFundamentals2016/Week1/hostname.txt
ssh sorja@users.cs.helsinki.fi 'cp ~/Linuxfundamentals2016/Week1/hostname.txt /cs/work/home/$USER/; ssh ukko004.hpc.cs.helsinki.fi cat hostname.txt' 
```

_Note: Can't copy to /cs/work/home/sorja as the /cs/work/ directory does not exist under users server_

### Ex 9.



### Ex 10.

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

_OSX doesn't seem to have --html_:
```
function gman {
     man "$1" | col -b > "/tmp/$1"
     open -a "/Applications/Google Chrome.app" "/tmp/$1"
}
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
$ ssh melkki.cs.helsinki.fi  
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

Having the snippet for invoking ~/.bash_aliases in .bashrc, requires you to 'login' to the shell. Ex. ssh sorja@melkki.cs.helsinki.fi.
If you have the invokation only there, and you write ex. `ssh sorja@melkki.cs.helsinki.fi ls -la`, the aliases are not loaded, therefore the colors stay the same.
To get the aliases/invoke commands when you just throw commands to ssh, you need to dump them/invoke them in ~/.bash_profile

### Ex 8.
```
ssh sorja@melkki.cs.helsinki.fi hostname > ~/LinuxFundamentals2016/Week1/hostname.txt
ssh sorja@melkki.cs.helsinki.fi 'cp ~/Linuxfundamentals2016/Week1/hostname.txt /cs/work/home/$USER/; ssh ukko004.hpc.cs.helsinki.fi cat hostname.txt' 
```


### Ex 9.

```
cp --archive /cs/home/tkt_cam/public_html/2016/11/10/ ~/LinuxFundamentals/Week1/exactumcam.2016.11.10
rsync --stats --archive /cs/home/tkt_cam/public_html/2016/11/10/ ~/LinuxFundamentals/Week1/exactumcam.2016.11.10
```
We can see difference in the ouput by emptying the directory
```
rm -rf ~/LinuxFundamentals/Week1/exactumcam.2016.11.10
rsync --stats --archive /cs/home/tkt_cam/public_html/2016/11/10/ ~/LinuxFundamentals/Week1/exactumcam.2016.11.10
```
Here we can see statistics in the output (with `--stats`).
First one is populated folder
```

Number of files: 16 (reg: 15, dir: 1)
Number of created files: 0
Number of deleted files: 0
Number of regular files transferred: 0
Total file size: 6,026,837 bytes
Total transferred file size: 0 bytes
Literal data: 0 bytes
Matched data: 0 bytes
File list size: 0
File list generation time: 0.014 seconds
File list transfer time: 0.000 seconds
Total bytes sent: 325
Total bytes received: 12

sent 325 bytes  received 12 bytes  674.00 bytes/sec
total size is 6,026,837  speedup is 17,883.79
```
And the second one is the empty directory
```
Number of files: 16 (reg: 15, dir: 1)
Number of created files: 16 (reg: 15, dir: 1)
Number of deleted files: 0
Number of regular files transferred: 15
Total file size: 6,026,837 bytes
Total transferred file size: 6,026,837 bytes
Literal data: 6,026,837 bytes
Matched data: 0 bytes
File list size: 0
File list generation time: 0.019 seconds
File list transfer time: 0.000 seconds
Total bytes sent: 6,029,218
Total bytes received: 304
sent 6,029,218 bytes  received 304 bytes  4,019,681.33 bytes/sec
total size is 6,026,837  speedup is 1.00
```

### Ex 10.
[rsync-todays-Exactum-cam.sh](rsync-todays-Exactum-cam.sh)  
To use the script, be on correct server and run
```
$ chmod +x ./rsync-todays-Exactum-cam.sh
$ ./rsync-todays-Exactum-cam.sh > bashrc
```
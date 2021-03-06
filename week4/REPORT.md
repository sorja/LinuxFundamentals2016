Week 4 report
---

### Ex. 1
#### ASCII Art
[longchat.sh](longchat.sh)

### Ex. 2
#### First Gnuplot script
[ex2/test.gnuplot](ex2/test.gnuplot)

#### Plotting data from file
[ex2/create-random-data.sh](ex2/create-random-data.sh)  
```bash
bash-3.2$ ./create-random-data.sh 100 > random_numbers.txt
```
generated data: [ex2/random_numbers.txt](ex2/random_numbers.txt)  
_Output_
```bash
gnuplot> plot "random_numbers.txt" using 1:2 w dots title "random numbers"


  35000 +-+-------+--------+---------+--------+---------+--------+-------+-+
        +         +        +   .     +    .   +         +     . .+         +
        |                               .           random numbers.        |
  30000 +-+             ..       .            .   .    .                 +-+
        |.     .                               .. .   .        .           |
  25000 +-.      .            ..   .        ...           .     .        +-+
        |   .        .                          .    . . ..                |
        |      .    ..   .           .                          .          |
  20000 +-+. .                     .    .          .                     +-+
        |       .       .          . .   .                                 |
        |               .            .                      . .   .        |
  15000 +-+ . .                                                          +-+
        |                                           .                      |
        |                                   .                        .     |
  10000 +-.         .      .      .    .      ..  .                      +-+
        | .                .    .            .             .               |
   5000 +-+   .                           .                              +-+
        |                                 .  .            . .         .    |
        +         +       .+      .  +        .   .  .. + ..     +         +
      0 +-+-------+---.----+-----.---+-.---.--+-.-------+--------+-------+-+
        0        5000    10000     15000    20000     25000    30000     35000
```

### Ex. 2
#### Let's plot some real data points
[get_date_temp_from_folder.sh](get_date_temp_from_folder.sh)
```bash
bash-3.2$ ./get_date_temp_from_folder.sh ../week3/lost24/monitor/2011.11* > tmp_temperatures.txt
```
..and the rest of the scripts/files can be found here  
[ex2](ex2)

### Ex. 3
_Exercise 3 became quite polluted, so the scripts have been moved to own dir_  
[ex3](ex3)

### Ex. 4
#### Let's make more refined commands
[temperatures.sh](temperatures.sh)
[temperatures.gnuplot](temperatures.gnuplot)

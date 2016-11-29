Week 4 report
---

### Ex. 1
#### ASCII Art
[longchat.sh](longchat.sh)

### Ex. 2
#### First Gnuplot script
[test.gnuplot](test.gnuplot)

#### Plotting data from file
[create-random-data.sh](create-random-data.sh)  
```bash
bash-3.2$ ./create-random-data.sh 100 > random_numbers.txt
```
generated data: [random_numbers.txt](random_numbers.txt)  
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

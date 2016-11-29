set terminal corel

set xlabel "Date"
set xdata time
set xrange [ "1/11/11":"30/11/11" ]

set timefmt "%Y.%m.%d"

set ylabel "temp(c)"
set yrange [ 20 : 30]

set title 'foo'

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue

set output "printme.eps"

plot 'tmp_temperatures.txt' using 1:2  with linespoints ls 1

set terminal dumb

set xlabel "Date"
set xdata time
set xrange [ "1/11/11":"30/11/11" ]

set timefmt "%Y.%m.%d"

set ylabel "temp(c)"
set yrange [ 20 : 30]

set title 'foo'

plot 'tmp_temperatures.txt' using 1:2
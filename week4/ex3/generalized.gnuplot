set terminal postscript enhanced

set title 'max-temps-2011.11'
set timefmt "%Y.%m.%d"

set xlabel 'date'
set xdata time
set format x "%m.%d"

set ylabel 'celsius'
set yrange [ 20 : ] 

set style data linespoints
set output outfile.'.eps'
plot(infile) using 1:2, '' using 1:3

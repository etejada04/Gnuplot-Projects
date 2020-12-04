#!/usr/bin/gnuplot
reset
set terminal svg size 640,480 enhanced font 'Verdana,12' background rgb 'white'
set title "Level of satisfaction (correspondent to answered questions)"
set ylabel "Number of points"
set xlabel "Faculty"
set yrange [0:10]
set boxwidth 0.5 
set style fill solid 
plot "quality.dat" using 0:3:4:xticlabels(2) with boxes lc variable notitle

#!/usr/bin/gnuplot
reset
set terminal svg size 640,480 enhanced font 'Verdana,12' background rgb 'white'
set title "Average of response per faculty (13/06/2016)"
set ylabel "Days after the request"
set xlabel "Faculty"
set yrange [0:7]
set boxwidth 0.5 
set style fill solid 
plot "email.dat" using 0:3:4:xticlabels(2) with boxes lc variable notitle

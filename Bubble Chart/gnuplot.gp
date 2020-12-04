#!/usr/bin/gnuplot
set terminal png font "arial,12" fontscale 1.0 size 640,480
set datafile separator ";"
set xdata time
set timefmt "%Y-%m-%d %H"
set format x "%j\n%H"
set xlabel "day of year and hour of day of first submission"
set ylabel "success rate"
set yrange [0:1]
set cblabel "no of submissions"
unset key
set palette rgbformulae 3,0,3
set grid
set style fill solid  
plot "data.txt" u 1:2:(sqrt($3*(2)**22)):3 notitle w circles lc palette 

##Compile using: ./gnuplot.gp > gnuplot.png


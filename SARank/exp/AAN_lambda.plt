set terminal postscript portrait enhanced color "Times-Roman" 16
set output "AAN_lambda.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:1]
set yr [0.65:0.85]  
set ytics ("0.65" 0.65, "0.69" 0.69, "0.73" 0.73, "0.77" 0.77, "0.81" 0.81, "0.85" 0.85)
#set xtics ("-1.6" -1.6, "-1.4" -1.4, "-1.2" -1.2, "-1.0" -1.0, "-0.8" -0.8, "-0.6" -0.6, "-0.4" -0.4) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1.5
set xlabel "importance weighting factor" offset 0,0.5
set key vertical samplen 3.3 spacing 1.2 at graph 0.97, 0.3
#set key horizontal font ",13" 
plot "AAN_lambda.tab" using ($1):($3) title 'SARank(FCita)'  with linespoints linetype 1 pointtype 2 lc 7 lw 3,\
"AAN_lambda.tab" using ($1):($2) title 'SARank(Recom)' with linespoints linetype 0 pointtype 6 lc 7 lw 3 

#lc rgb "#D2691E"    {/Symbol l}
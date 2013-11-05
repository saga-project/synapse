
# --------------------------------------------------------------------------------------------------
#
# base parameters
#
set key       Left left
set pointsize  0.8
#set ytic      0,5

# --------------------------------------------------------------------------------------------------
#
# Weak Scaling: Compute, Memory, Storage
#

set term pdfcairo enhanced color font "Arial,12"
set output    'weak_scaling_compute.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[1:64][0:200] \
    "<(grep -e 'WS.C\... '  mod.dat)" using ($7+0.2):3 title 'Model total'   with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e 'WS.C\...\.' mod.dat)" using ($7-0.2):4 title 'Model compute' with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e 'WS.C\...\.' mod.dat)" using ($7-0.2):5 title 'Model memory'  with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e 'WS.C\...\.' mod.dat)" using ($7-0.2):6 title 'Model storage' with points      lc rgb '#777733' pt 7, \
    "<(grep -e 'WS.C\... '  exp.dat)" using ($7-0.2):3 title 'Exp.  total'   with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e 'WS.C\...\.' exp.dat)" using ($7-0.2):4 title 'Exp.  compute' with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e 'WS.C\...\.' exp.dat)" using ($7-0.2):5 title 'Exp.  memory'  with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e 'WS.C\...\.' exp.dat)" using ($7-0.2):6 title 'Exp.  storage' with points      lc rgb '#994499' pt 7 
set output 'weak_scaling_compute.png'
set term   pngcairo size 800,600 enhanced color font "Arial,12"
replot
print "WS.C"

set term pdfcairo enhanced color font "Arial,12"
set output    'weak_scaling_memory.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[1:64][0:20] \
    "<(grep -e 'WS.M\... '  mod.dat)" using ($7+0.2):3 title 'Model total'   with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e 'WS.M\...\.' mod.dat)" using ($7-0.2):4 title 'Model compute' with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e 'WS.M\...\.' mod.dat)" using ($7-0.2):5 title 'Model memory'  with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e 'WS.M\...\.' mod.dat)" using ($7-0.2):6 title 'Model storage' with points      lc rgb '#777733' pt 7, \
    "<(grep -e 'WS.M\... '  exp.dat)" using ($7-0.2):3 title 'Exp.  total'   with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e 'WS.M\...\.' exp.dat)" using ($7-0.2):4 title 'Exp.  compute' with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e 'WS.M\...\.' exp.dat)" using ($7-0.2):5 title 'Exp.  memory'  with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e 'WS.M\...\.' exp.dat)" using ($7-0.2):6 title 'Exp.  storage' with points      lc rgb '#994499' pt 7 
set output 'weak_scaling_memory.png'
set term   pngcairo size 800,600 enhanced color font "Arial,12"
replot
print "WS.M"


set term pdfcairo enhanced color font "Arial,12"
set output    'weak_scaling_storage.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot [1:64][0:500] \
    "<(grep -e 'WS.S\... '  mod.dat)" using ($7+0.2):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e 'WS.S\...\.' mod.dat)" using ($7-0.2):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e 'WS.S\...\.' mod.dat)" using ($7-0.2):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e 'WS.S\...\.' mod.dat)" using ($7-0.2):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e 'WS.S\... '  exp.dat)" using ($7-0.2):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e 'WS.S\...\.' exp.dat)" using ($7-0.2):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e 'WS.S\...\.' exp.dat)" using ($7-0.2):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e 'WS.S\...\.' exp.dat)" using ($7-0.2):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set output 'weak_scaling_storage.png'
set term   pngcairo size 800,600 enhanced color font "Arial,12"
replot
print "WS.S"


# --------------------------------------------------------------------------------------------------
#
# Scaling Compute load + background
#
set pointsize  1.0
set xtic       1,1

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_1.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C1\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 2, \
    "<(grep -e ' C1\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C1\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C1\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C1\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 2, \
    "<(grep -e ' C1\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C1\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C1\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_1.png'
replot
print "C1"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_2.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C2\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C2\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C2\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C2\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C2\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C2\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C2\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C2\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_2.png'
replot
print "C2"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_3.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C3\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C3\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C3\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C3\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C3\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C3\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C3\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C3\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_3.png'
replot
print "C3"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_4.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C4\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C4\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C4\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C4\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C4\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C4\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C4\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C4\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_4.png'
replot
print "C4"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_5.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C5\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C5\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C5\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C5\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C5\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C5\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C5\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C5\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_5.png'
replot
print "C5"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_6.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C6\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C6\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C6\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C6\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C6\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C6\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C6\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C6\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_6.png'
replot
print "C6"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_7.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C7\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C7\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C7\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C7\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C7\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C7\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C7\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C7\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_7.png'
replot
print "C7"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_compute_8.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' C8\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' C8\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' C8\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' C8\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' C8\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' C8\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' C8\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' C8\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_compute_8.png'
replot
print "C8"


# ----------------------------------------------------------------------   ----------------------------
#
# Scaling Memory load + background
#
set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_1.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M1\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M1\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M1\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M1\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M1\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M1\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M1\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M1\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_1.png'
replot
print "M1"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_2.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M2\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M2\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M2\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M2\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M2\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M2\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M2\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M2\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_2.png'
replot
print "M2"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_3.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M3\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M3\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M3\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M3\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M3\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M3\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M3\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M3\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_3.png'
replot
print "M3"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_4.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M4\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M4\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M4\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M4\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M4\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M4\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M4\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M4\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_4.png'
replot
print "M4"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_5.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M5\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M5\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M5\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M5\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M5\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M5\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M5\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M5\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_5.png'
replot
print "M5"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_6.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M6\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M6\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M6\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M6\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M6\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M6\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M6\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M6\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_6.png'
replot
print "M6"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_7.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M7\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M7\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M7\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M7\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M7\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M7\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M7\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M7\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_7.png'
replot
print "M7"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_memory_8.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:100] \
    "<(grep -e ' M8\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' M8\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' M8\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' M8\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' M8\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' M8\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' M8\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' M8\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_memory_8.png'
replot
print "M8"


# ----------------------------------------------------------------------   ----------------------------
#
# Scaling Compute load + background
#
set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_1.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S1\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S1\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S1\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S1\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S1\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S1\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S1\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S1\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_1.png'
replot
print "S1"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_2.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S2\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S2\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S2\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S2\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S2\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S2\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S2\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S2\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_2.png'
replot
print "S2"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_3.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S3\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S3\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S3\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S3\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S3\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S3\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S3\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S3\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_3.png'
replot
print "S3"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_4.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S4\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S4\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S4\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S4\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S4\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S4\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S4\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S4\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_4.png'
replot
print "S4"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_5.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S5\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S5\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S5\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S5\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S5\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S5\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S5\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S5\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_5.png'
replot
print "S5"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_6.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S6\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S6\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S6\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S6\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S6\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S6\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S6\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S6\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_6.png'
replot
print "S6"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_7.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S7\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S7\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S7\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S7\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S7\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S7\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S7\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S7\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_7.png'
replot
print "S7"

set term pdfcairo enhanced color font "Arial,12"
set output    'scaling_storage_8.pdf'
set xlabel    'number of applications' font "Times-Italic, 20"
set ylabel    'time to completion (s)' font "Times-Italic, 20"
plot[0:17][0:1000] \
    "<(grep -e ' S8\... '  mod.dat)" using ($7+0.1):3 title 'Model total'    with linespoints lc rgb '#33DD55' pt 7 lw 3, \
    "<(grep -e ' S8\...\.' mod.dat)" using ($7+0.1):4 title 'Model compute'  with points      lc rgb '#00BB77' pt 7, \
    "<(grep -e ' S8\...\.' mod.dat)" using ($7+0.1):5 title 'Model memory'   with points      lc rgb '#0077BB' pt 7, \
    "<(grep -e ' S8\...\.' mod.dat)" using ($7+0.1):6 title 'Model storage'  with points      lc rgb '#777733' pt 7, \
    "<(grep -e ' S8\... '  exp.dat)" using ($7-0.1):3 title 'Exp.  total'    with linespoints lc rgb '#FF9944' pt 7 lw 3, \
    "<(grep -e ' S8\...\.' exp.dat)" using ($7-0.1):4 title 'Exp.  compute'  with points      lc rgb '#DD5500' pt 7, \
    "<(grep -e ' S8\...\.' exp.dat)" using ($7-0.1):5 title 'Exp.  memory'   with points      lc rgb '#BB0055' pt 7, \
    "<(grep -e ' S8\...\.' exp.dat)" using ($7-0.1):6 title 'Exp.  storage'  with points      lc rgb '#994499' pt 7 
set term pngcairo size 800,600 enhanced color font "Arial,12"
set output    'scaling_storage_8.png'
replot
print "S8"

# ----------------------------------------------------------------------   --------
# vim: ft=gnuplot


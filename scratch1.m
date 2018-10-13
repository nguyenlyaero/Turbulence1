clear; clc;
u = read_fortran_box('Run01_uVel_t000010.out', 256, 256, 256, 'double');
v = read_fortran_box('Run01_vVel_t000010.out', 256, 256, 256, 'double');
w = read_fortran_box('Run01_wVel_t000010.out', 256, 256, 256, 'double');
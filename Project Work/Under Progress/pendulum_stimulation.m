clear all
clc
close all
t_max = 4.5*60;
f_min = 25/60;
f_max = 35/60;
n_pendula = 40;
h1 = Pendulum(t_max, f_min, f_max,n_pendula);
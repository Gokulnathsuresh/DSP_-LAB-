clc;
close all;
clear all;
x = [1 2 1 2];
h = [1 2 3 4];
xh = fft(x);
hh = fft(h);
yh = xh.*hh;
y = ifft(yh);
disp("Using FFT and IFFT:")
disp(y);

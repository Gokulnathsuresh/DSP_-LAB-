clc;
close all;
clear all;
x1=[1 2 3 4];
x2= [2 1 2 1];
N=max(length(x1), length(x2));
x1new=[x1 zeros(1, N-length(x1))];
x2new=[x2 zeros(1, N-length(x2))];
X1= fft(x1new);
X2 =fft(x2new);
circular_conv_time =cconv(x1new, x2new, N);
product_freq =ifft(X1 .*X2);
disp("x1(n) cconv x2(n):");
disp(circular_conv_time);
disp("IDFT(X1(k)*X2(k)):");
disp(product_freq);
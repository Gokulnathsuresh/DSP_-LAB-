clc;
clear all;
close all;
x1=[1 2 1 1];
x2=[1 2 3 4];
N =max(length(x1), length(x2));
x1new=[x1 zeros(1, N-length(x1))];
x2new=[x2 zeros(1, N-length(x2))];
time_domain_value=sum(x1new.*conj (x2new));
freq_domain_value = sum(fft(x1new).*conj (fft(x2new)))./ N;
disp("Sum{n:0->N-1; x1(n) *conj(x2(n))}:");
disp(time_domain_value);
disp("Sum{k:0->N-1;X1(k)*conj(X2(k))}/N:");
disp(freq_domain_value);

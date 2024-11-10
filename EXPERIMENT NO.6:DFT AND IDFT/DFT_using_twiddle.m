clc;
clear all;
close all;
x = [1 2 3 4];
N = length(x);
X = zeros(N, 1);
twiddle_factors = zeros(N, N);
for k = 0:N-1
for n = 0:N-1
twiddle = exp(-2*pi*1i*k*n/N);
twiddle_factors(k+1, n+1) = twiddle;
X(k+1) = X(k+1) + x(n+1) * twiddle;
end
end
disp("DFT:");
disp(X);

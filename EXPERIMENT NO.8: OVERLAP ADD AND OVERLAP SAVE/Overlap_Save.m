clc;
clear all;
close all;
x = [1 2 3 4 5 6 7 8 9 10];
h = [1 1 1];
N = 5;
lx = length(x);
lh = length(h);
m = lh - 1;
x = [zeros(1, m), x, zeros(1, N-1)];
h = [h, zeros(1, N - lh)];
L = N - lh + 1;
k = floor((length(x) - m) / L);
p = [];
for i = 0:k-1
y = x(i * L + 1 : i * L + N);
q = mycirconv1(y, h);
p = [p, q(lh:N)];
end
disp("Output Signal (Convolved using Overlap-Save Method):");
disp(p);
function y = mycirconv1(x, h)
N = length(x);
y = ifft(fft(x, N) .* fft(h, N));
end

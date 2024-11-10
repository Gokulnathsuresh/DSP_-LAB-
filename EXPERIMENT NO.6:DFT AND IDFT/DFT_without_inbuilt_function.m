clc;
clear all;
close all;
x=[1 1 0 0];
N=length(x);
X=zeros(4,1);
for k=0:N-1
for n =0:N-1
X(k+1)=X(k+1)+x(n+1)*exp(-i*2*pi*n*k/N);
end
end
disp(round(X));
%using built in function
disp("Using built in function:");
disp(fft(x));

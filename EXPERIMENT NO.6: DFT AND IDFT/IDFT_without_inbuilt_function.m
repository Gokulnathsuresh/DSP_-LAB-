clc;
clear all;
close all;
X=[2 1-i 0 1+i];
N=length(X);
x=zeros(4,1);
for n=0:N-1
for k =0:N-1
x(n+1)=(x(n+1)+X(k+1)*exp(i*2*pi*n*k/N));
end
end
x=x/N;
disp(round(x));
%using built in function
disp("Using built in function:");
disp(ifft(X));
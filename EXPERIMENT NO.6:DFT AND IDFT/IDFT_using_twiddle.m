clc;
clear all;
close all;
X=[2,1-i,0,1+i];
N=length(X);
x=zeros(N,1);
twiddle_factors=zeros(N,N);
for n=0:N-1
for k=0:N-1
twiddle =exp(2*i*pi*k*n/N);
twiddle_factors(n+1,k+1)=twiddle;
x(n+1)=x(n+1)+X(k+1)*twiddle
end
end
x=x/N;
disp("IDFT:");
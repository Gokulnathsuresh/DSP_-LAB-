clc;
close all;
clear all;
x = [1 2 1 2];
h = [1 2 3 4];
l=length(x);
m=length(h);
c=max(l,m);
x=x(:,end:-1:1);
for i=1:l;
 x=[x(end) x(1:end-1)];
 h1=h;
 y=sum(x.*h1);
 disp(y)
end 
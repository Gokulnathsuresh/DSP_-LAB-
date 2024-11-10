clc;
close all;
clear all;
x = [1 2 3 4];
h = [1 1 1 ];
l = length(x);
m = length(h);
c = max(l,m);
li= l+m-1;
y = conv(x,h);
for i=1:li-c
y(i) = y(i) + y(i+c);
end
for i=1:c
y1(i) = y(i);
end
disp("Circular convolution using Linear Convolution:")
disp(y1);
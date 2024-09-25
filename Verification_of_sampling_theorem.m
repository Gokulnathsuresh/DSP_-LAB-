
clc;
close all;
clear all;
f=10;
t=0:0.005:0.2;
x=sin(2*pi*f*t);
subplot(2,2,1);
plot(t,x);
hold on;
stem(t,x);
xlabel ("time");
ylabel ("amplitude");
title("sinewave");

% Under sampling
f1=10;
F=10;
t1=0: 1/F :2;
x1=sin(2*pi*f1*t1);
subplot(2,2,2);
plot(t1,x1);
hold on;
stem(t1,x1);
xlabel ("time");
ylabel ("amplitude");
title("Under sampling");

% Nyquist sampling
f2=10;
F2=20;
t2=0: 1/F2 :2;
x2=sin(2*pi*f2*t2);
subplot(2,2,3);
plot(t2,x2);
hold on;
stem(t2,x2);
xlabel ("time");
ylabel ("amplitude");
title("Nyquist sampling");

% Over Sampling

f3=10;
F3=30;
t3=0: 1/F3 :2;
x3=sin(2*pi*f3*t3);
subplot(2,2,4);
plot(t3,x3);
hold on;
stem(t3,x3);
xlabel ("time");
ylabel ("amplitude");
title("Over sampling");
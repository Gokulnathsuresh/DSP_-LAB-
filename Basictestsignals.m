clc;
close all;
clear all;
% Unit Impulse
t1=-5:1:5;
Y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,1);
stem(t1,Y1);
xlabel ('time index');
ylabel ('amplitude');
title ('Unit Impulse');
% Unit Step
t2=-5:1:5;
Y2=[zeros(1,5),ones(1,6)];
subplot(3,3,2);
stem(t2,Y2);
xlabel ('time index');
ylabel ('amplitude');
title('Unit step');
% Ramp Signal
t3=0:1:5;
Y3= [t3];
subplot (3,3,3);
stem(t3,Y3);
hold on;
plot (t3,Y3);
xlabel ('time index');
ylabel ('amplitude');
title  ("Ramp Signal");
legend("Discrete","Continuous");
% Sine Wave
t4 = 0:0.001:1;
f = 10;
y4 = sin(2*pi*f*t4);
subplot(3,3,4);
stem(t4,y4);
hold on;
plot(t4,y4);
xlabel("time index");
ylabel("amplitude"); 
title("Sine Wave");
legend("Discrete","Continuous");
% Cosine Wave
t5 = 0:0.001:1;
f = 10;
y5 = cos(2*pi*f*t5);
subplot(3,3,5);
stem(t5,y5);
hold on;
plot(t5,y5); 
xlabel("time index");
ylabel("amplitude"); 
title("Cosine Wave");
legend("Discrete","Continuous");
% Square wave Bipolar
t6=0:0.01:1;
f6=5;
y6=square(2*pi*f6*t6);
subplot(3,3,6);
stem(t6,y6);
hold on;
plot(t6,y6);
xlabel("time index");
ylabel("amplitude"); 
title("Square Wave Bipolar");
legend("Discrete","Continuous");
% Square wave Unipolar
t7 = 0:0.1:1;
f7 = 5;
y7 = abs(square(2*pi*f7*t7)); 
subplot(3,3,7);
stem(t7,y7);
hold on; 
plot(t7,y7); 
xlabel("time index");
ylabel("amplitude"); 
title("Square wave Unipolar"); 
legend("Discrete","Continuous");
% Exponential signal
t8 = -5:1:5;
y8 = exp(t8);
subplot(3,3,8);
stem(t8,y8);
hold on;
plot(t8,y8);
xlabel("time index");
ylabel("amplitude"); 
title("Exponential Signal"); 
legend("Discrete","Continuous");
% Triangular wave
t9 = 0:0.025:1;
f9 = 10;
y9 = sawtooth(2*pi*f9*t9,0.5); 
subplot(3,3,9);
stem(t9,y9);
hold on; 
plot(t9,y9); 
xlabel("time index");
ylabel("amplitude"); 
title("Triangular Signal"); 
legend("Discrete","Continuous");
















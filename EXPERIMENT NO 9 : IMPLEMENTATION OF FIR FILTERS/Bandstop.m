clc;
clear all;
close all;
N=input("Enter the value of N");
wc1=0.25*pi;
wc2=0.75*pi;
alpha=(N-1)/2;
eps=0.001;
n=0:1:N-1;
hd=sin(wc1*(n-alpha+eps))-sin(wc2*(n-alpha+eps))+sin(pi*(n-alpha+eps))./(pi*(n-alpha+eps));
wr1=hanning(N);
wr2=boxcar(N);
wr3=hamming(N);
wr4=bartlett(N);
hn1=hd.*wr1';
hn2=hd.*wr2';
hn3=hd.*wr3';
hn4=hd.*wr4';
w=0:0.01:pi;
h1=freqz(hn1,1,w);
h2=freqz(hn2,1,w);
h3=freqz(hn3,1,w);
h4=freqz(hn4,1,w);
subplot(4,2,1);
plot(w/pi ,10*log10(abs(h1)));
title("Band stop Filter using hanning window");
xlabel("Normalized Frequency");
ylabel("magnitude in dB");

subplot(4,2,2);
plot(w/pi ,10*log10(abs(h2)));
title("Band stop Filter using rectangular window");
xlabel("Normalized Frequency");
ylabel("magnitude in dB");

subplot(4,2,3);
plot(w/pi ,10*log10(abs(h3)));
title("Band stop Filter using hamming window");
xlabel("Normalized Frequency");
ylabel("magnitude in dB");

subplot(4,2,4);
plot(w/pi ,10*log10(abs(h4)));
title("Band stop Filter using bartlett window");
xlabel("Normalized Frequency");
ylabel("magnitude in dB");

subplot(4,2,5);
stem(wr1);
title("hanning window");

subplot(4,2,6);
stem(wr2);
title("rectangular window");

subplot(4,2,7);
stem(wr3);
title("hamming window");

subplot(4,2,8);
stem(wr4);
title("bartlett window");
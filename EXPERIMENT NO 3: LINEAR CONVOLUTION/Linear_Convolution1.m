clc;
close all;
clear all;
x = input('Enter input sequence: '); % Input sequence
x_ind = input('Enter index of x: '); % Index for input sequence
h = input('Enter impulse sequence: '); % Impulse sequence
h_ind = input('Enter index of h: '); % Index for impulse sequence

% Convolution
y = conv(x, h);

% Time indices for convolution result
y_ind = (min(x_ind) + min(h_ind)) : (max(x_ind) + max(h_ind));

% Display and plot
disp('Output sequence (convolution result):');
disp(y);
stem(y_ind, y, '-o');
xlabel('Time index');
ylabel('Amplitude');
title('Linear Convolution');

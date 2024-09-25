
clc;
clear all;
close all;

x = input('Enter input sequence: '); % Input sequence
x_ind = input('Enter index of x: '); % Index for input sequence
h = input('Enter impulse sequence: '); % Impulse sequence
h_ind = input('Enter index of h: '); % Index for impulse sequence

Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

y = zeros(1, Ny);

for n = 1:Ny
    for k = 1:Nx
        if (n-k+1 > 0 && n-k+1 <= Nh)
            y(n) = y(n) + x(k) * h(n-k+1); 
        end
    end
end

y_ind = min(x_ind) + min(h_ind) : max(x_ind) + max(h_ind); % Time index for output
disp('Output sequence (convolution result):');
disp(y);

stem(y_ind, y, '-o'); % Plot the result
xlabel('Time index');
ylabel('Amplitude');
title('Linear Convolution');

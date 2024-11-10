clc;
clear all;
close all;

% Input signal and filter
Xn = [1 2 3 4 5 6 7 8 9 10 11 12];
Hn = [1 1 1];
L = 5;

% Signal length calculations
NXn = length(Xn);
M = length(Hn);
M1 = M - 1;
R = rem(NXn, L);
N = L + M1;

% Padding input signal if necessary
if R ~= 0
    Xn = [Xn, zeros(1, L - R)];
end
Hn = [Hn, zeros(1, N - M)];

% Calculate number of segments and initialize output
K = floor(length(Xn) / L);
y = zeros(1, length(Xn) + M - 1);
z = zeros(1, M1);

% Overlap-Add Method
for k = 0:K-1
    startIndex = L * k + 1;
    endIndex = startIndex + L - 1;
    Xnp = Xn(startIndex:endIndex);
    Xnk = [Xnp, z];
    convSegment = mycirconv(Xnk, Hn);
    
    outputStart = startIndex;
    outputEnd = outputStart + N - 1;
    if outputEnd > length(y)
        outputEnd = length(y);
    end
    
    y(outputStart:outputEnd) = y(outputStart:outputEnd) + ...
                               convSegment(1:(outputEnd-outputStart+1));
end

% Display output
disp('Output Signal (Convolved using Overlap-Add Method):');
disp(y);

% Circular convolution function
function y = mycirconv(x, h)
    N = max(length(x), length(h));
    y = ifft(fft(x, N) .* fft(h, N));
end

**Experiment No:06**

# **DFT AND IDFT**

**Aim:**<br>
To perform DFT and IDFT with and without twiddle factor and to plot the magnitude and
phase plot of DFT sequence.

**Theory:**<br>
Discrete Fourier Transform is the transformation used to represent the finite duration
frequencies. DFT of a discrete sequence x(n) is obtained by performing sampling operations in
both time domain and frequency domain. It is the frequency domain representation of a discrete
digital signal.<br>

The DFT of a sequence x (n) of length N is given by the following equation,<br>
                             X(k) = {𝑛=0∑𝑁−1 𝑥(𝑛) 𝑒−𝑗2𝛱𝑘𝑛/N ;0≤k≤N−1 } <br>

IDFT performs the reverse operation of DFT, to obtain the time domain sequence x(n) from
frequency domain sequence X(k). IDFT of the sequence is given as,<br>
                          x(n) =1/𝑁 {𝑛=0∑𝑁−1 X(K) 𝑒𝑗2𝛱𝑘𝑛/N ;0≤k≤N−1 } <br>

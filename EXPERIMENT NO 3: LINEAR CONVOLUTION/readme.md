**Experiment No: 4** 

# **Circular Convolution**

**Aim:**
To find circular convolution
1. Using FFT and IFFT.
2. Using Concentric Circle Method.
3. Using Matrix Method.

**Theory:**
Circular convolution is a mathematical operation that is like linear convolution but is
performed in a periodic or circular manner. This is particularly useful in discrete-time signal
processing where signals are often represented as periodic sequences.

**Mathematical Definition:**
Given two periodic sequences x[n] and h[n], their circular convolution is defined as:
y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N]

**Applications:**
o Discrete-Time Filtering: Circular convolution is used for filtering discrete-time
signals.
o Digital Signal Processing: It's a fundamental operation in many digital signal
processing algorithms.
o Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular
convolution is used to simplify the implementation of linear convolution.

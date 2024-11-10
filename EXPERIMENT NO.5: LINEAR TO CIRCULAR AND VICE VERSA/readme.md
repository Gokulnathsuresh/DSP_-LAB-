**Experiment No: 5**

# **LINEAR CONVOLUTION USING CIRCULAR CONVOLUTION AND VICE VERSA**

**Aim:**<br>
a) To perform Linear Convolution using Circular Convolution.
b) To perform Circular Convolution using Linear Convolution.

**Theory:**

*Performing Linear Convolution Using Circular Convolution*.
1. Zero-Padding: Pad both sequences x[n] and h[n] with zeros to a length of at least 2N1, where N is the maximum length of the two sequences. This ensures that the circular
convolution will not wrap around and introduce artificial periodicity.
2. Circular Convolution: Perform circular convolution on the zero-padded sequences.
3. Truncation: Truncate the result of the circular convolution to the length N1 + N2 - 1,
where N1 and N2 are the lengths of the original sequences x[n] and h[n], respectively.

*Performing Circular Convolution Using Linear Convolution.*
1. Zero-Padding: Pad both sequences x[n] and h[n] to a length of at least 2N-1, where N
is the maximum length of the two sequences.
2. Linear Convolution: Perform linear convolution on the zero-padded sequences.
3. Modulus Operation: Apply the modulus operation to the indices of the linear
convolution result, using the period N. This effectively wraps around the ends of the
sequence, making it circular

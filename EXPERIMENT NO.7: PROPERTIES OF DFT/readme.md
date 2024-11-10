**Experiment No:07**

# **PROPERTIES OF DFT**

**Aim:**
To perform the following properties of DFT:
1. Linearity
2. Convolution
3. Multiplication
4. Parsevals theorem

**Theory**

*Linearity*
The linearity property of DFT states that the DFT of a linear weighted combination of two or
more signals is equal to similar linear weighted combination of the DFT of individual signals.
Let,                          DFT{x1(n)}=X₁(K) & DFT{x2(n)}=X2(K)
then,            DFT[a₁x₁(n)+a2x2(n)}=a₁X₁(K)+a2X2(K) where a, & a₂ are constants

*Convolution*
The Circular Convolution of two N-Point Sequences x₁(n) & x2(n) is defined as,
                              x₁(1) Θ x2(n) = Σ=x₁(n) x2((n-m))N
The Convolution Property of DFT says that, the DFT of circular convolution of two sequences
is equivalent to product of their individual DFTS. Let,
                            DFT[x₁(n)}=X₁(K) and DFT(x2(n)}=X2(K)
then, By Convolution property,
                               DFT(x₁(n) Θ x2(n)}=X₁(K) X₂(K)

*Multiplication*
The Multiplication Property of DFT says that the DFT of product of two discrete time
sequences is equivalent to circular convolution of DFT's of the individual sequences scaled by
the factor of 1/N.If,
                                        DFT(x(n))=X(K)
then,                          DFT(x,(n) x2(n)}=1/Ν[Χ₁(Κ)ΘΧ₂(Κ))

*Parseval theorem*
Let DFT(x₁(n)]=X₁(K) & DFT[x2(n))=X2(K) then by Parseval' theorem
                           𝛴𝑁−1 x1(n)x2*(n)=1/Ν 𝛴𝑁−1 Χ1(K) Χ₂*(K)

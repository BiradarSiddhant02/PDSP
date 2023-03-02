import cmath
import matplotlib.pyplot as plt

# Function to calculate the DIT-FFT
def DIT_FFT(x):
    N = len(x)
    if N <= 1: return x
    even = DIT_FFT(x[0::2])
    odd =  DIT_FFT(x[1::2])
    T= [cmath.exp(-2j*cmath.pi*k/N)*odd[k] for k in range(N//2)]
    return [even[k] + T[k] for k in range(N//2)] + [even[k] - T[k] for k in range(N//2)]

# Function to calculate the DIF-FFT
def DIFFT(x):
    N = len(x)
    if N <= 1: return x
    even = DIFFT(x[0::2])
    odd =  DIFFT(x[1::2])
    T= [cmath.exp(2j*cmath.pi*k/N)*odd[k] for k in range(N//2)]
    return [even[k] + T[k] for k in range(N//2)] + [even[k] - T[k] for k in range(N//2)]

a = input ("Enter elements of n: ")
x = list(map(int, a.split()))

XK = DIT_FFT(x)
for i in range(8):
    print(XK[i])
print()

# XK = DIT_FFT([1,2,3,4,5,6,7,8])
# for i in range(8):
#     print(XK[i])
# print()
    

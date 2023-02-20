#linear convolution in python
import numpy as np
import matplotlib.pyplot as plt
import scipy.signal as signal
#input sequences
a = input ("Enter elements of n: ")
x = list(map(int, a.split()))
b = input ("Enter elements of h: ")
h = list(map(int, b.split()))
# h = np.array([1,2,3])
#convolution
y = np.convolve(x,h)
print(y)
#plotting
plt.subplot(3,1,1)
plt.stem(x)
plt.title('Input 1')
plt.subplot(3,1,2)
plt.stem(h)
plt.title('Input 2')
plt.subplot(3,1,3)
plt.stem(y)
plt.title('Output')
plt.show()
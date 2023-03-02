import numpy as np

a = input ("Enter elements of n: ").split()
# x = list(map(int, a.split()))

y = np.ifft(a)
print(y)
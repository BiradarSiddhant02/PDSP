from FFT import DIT_FFT as fft
import numpy as np

#circular convolution in python

def circ_conv(x, h, domain):
    if len(x) < len(h):
        x + np.zeros(1, len(h) - len(x))
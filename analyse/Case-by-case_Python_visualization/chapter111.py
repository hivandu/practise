#coding: utf-8
"""
filename: ./chapter111.py
"""

import numpy as np
import matplotlib.pyplot as plt

a = np.linspace(0, 10, 100)
b = np.exp(-a)
plt.plot(a, b)

plt.show()
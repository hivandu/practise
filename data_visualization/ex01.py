# - * - coding: utf-8 - * -

import numpy as np
import matplotlib.pyplot as plt

a = np.linspace(0, 10, 1000)
b = np.exp(-a)

plt.plot(a, b)
plt.show()
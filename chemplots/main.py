import matplotlib.pyplot as plt
import numpy as np

rates = np.array([1.41e-2, 1.13e-1, 5.64e-2])
NO = np.array([0.0126, 0.0252, 0.0252])
O2 = np.array([0.0125, 0.025, 0.0125])

plt.xlabel("Rate (M/s)")
plt.ylabel("Moles")
plt.title("Reaction Rate")

plt.scatter(rates, NO, label = "NO")
plt.scatter(rates, O2, label = "O2")
plt.legend()
plt.show()

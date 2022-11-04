import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
# %matplotlib inline
import scipy.cluster.hierarchy as shc
from scipy.spatial.distance import squareform, pdist

a = np.random.random_sample(size = 7)
b = np.random.random_sample(size = 7)

print("a =", a)
print("b =", b)

point = ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7']
data = pd.DataFrame({'Point':point, 'a':np.round(a, 2), 'b':np.round(b, 2)})
data = data.set_index('Point')
print("data : \n", data)


plt.figure(figsize=(8, 5))
plt.scatter(data['a'], data['b'], c='r', marker='.')
plt.xlabel('Column a')
plt.ylabel('Column b')
plt.title("Scatter Plot of x and y")

for j in data.itertuples():
  plt.annotate(j.Index, (j.a + 0.005, j.b + 0.005), fontsize=15)

plt.show()


dist = pd.DataFrame(squareform(pdist(data[['a', 'b']]), 'euclidean'), columns = data.index.values, index=data.index.values)
print("dist : \n", dist)

plt.figure(figsize=(12, 5))
plt.title("Denedrogram with Single Linkage")
dend  = shc.dendrogram(shc.linkage(data[['a', 'b']], method='single'), labels=data.index)
# dend.show()
plt.show()
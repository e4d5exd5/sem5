import networkx as nx
import matplotlib.pyplot as plt

D = nx.DiGraph()

weighted_edges = [('A', 'B', 1), ('A', 'C', 1), ('C', 'A', 1), ('B', 'C', 1), ]

D.add_weighted_edges_from(weighted_edges)
ranks = nx.pagerank(D)
ranks = dict(sorted(ranks.items(), key=lambda item:-item[1]))
print(type(ranks))
print("Page Ranks : ")
print("Page\tRank\tFunction Value")
i = 1
for k, v in ranks.items():
  print(f"{k}\t{i}\t{v}")
  i += 1
nx.draw(D, with_labels=True)
plt.show()
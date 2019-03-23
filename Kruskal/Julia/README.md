
<a id='Documentación-Kruskal-1'></a>

# Documentación Kruskal



<a id='Kruskal.kruskal' href='#Kruskal.kruskal'>#</a>
**`Kruskal.kruskal`** &mdash; *Function*.



```
kruskal(vertices, sorted_edges)
```

Implementa el algoritmo de Kruskal para encontrar el arbol generador minimal de un grafo. Devuelve un vector de aristas representadas como 2-uplas.

**Argumentos posicionales**

**vertices:** Un iterador sobre los vértices del grafo.

**sorted_edges:** Un iterador sobre las aristas del grafo, representadas como 2-uplas, ordenadas de menor a mayor coste.

**Ejemplo:**

```julia

# Vértices del grafo
v = [1 2 3 4 5 6 7 8 9 10]
# Aristas del grafo
e = [(1, 2), (1, 3), (2, 3), (2, 4), (2, 5),
     (4, 7), (5, 6), (5, 8), (5, 7), (6, 8),
     (7, 8), (7, 9), (8, 9), (9, 10)]

kruskal(v, e)

# output
9-element Array{Any,1}:
 (1, 2) 
 (1, 3) 
 (2, 4) 
 (2, 5) 
 (4, 7) 
 (5, 6) 
 (5, 8) 
 (7, 9) 
 (9, 10)
```


<a target='_blank' href='https://github.com/programacion-competitiva/Algoritmos-utiles/blob/3e9c1a67d84fa1d78739123755059c03e8cbb6b5/Kruskal/Julia/Kruskal.jl#L5-L45' class='documenter-source'>source</a><br>


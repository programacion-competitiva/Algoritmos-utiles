module Kruskal
export kruskal


"""
	kruskal(vertices, sorted_edges)

Implementa el algoritmo de Kruskal para encontrar el arbol generador minimal de un grafo.
Devuelve un vector de aristas representadas como 2-uplas.


# Argumentos posicionales

**vertices:** Un iterador sobre los vértices del grafo.

**sorted_edges:** Un iterador sobre las aristas del grafo, representadas como 2-uplas, ordenadas de menor a mayor coste.


# Ejemplo:


```jldoctest

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
"""
function kruskal(vertices, sorted_edges)
    T = []
    F = []
    for v in vertices
        push!(F, Set([v]))
    end
    
    for (u, v) in sorted_edges
        u_tree_index = findfirst(t -> in(u, t), F)
        v_tree_index = findfirst(t -> in(v, t), F)
        if u_tree_index != v_tree_index
            push!(T, (u, v))
            push!(F, union(F[u_tree_index], F[v_tree_index]))
            deleteat!(F, u_tree_index)
            deleteat!(F, v_tree_index - (v_tree_index > u_tree_index ? 1 : 0))
        end
    end
    
    return T
end

end # module

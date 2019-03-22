
<a id='Documentación-A-1'></a>

# Documentación A★



<a id='AStar.A★' href='#AStar.A★'>#</a>
**`AStar.A★`** &mdash; *Function*.



```
A★(start::T,
   goal::T,
   neighbors::Function;
   h = n -> 0.0,
   dist = (n1, n2) -> 1)
```

Implementa el algoritmo A* para encontrar la secuencia de estados por los que pasar para llegar desde `start` a `goal`.

**Argumentos posicionales**

**start:** El estado de partida

**goal:** El estado al que queremos llegar

**neighbors:** Una función que dado un estado te devuelve una lista de todos sus vecinos

**Argumentos opcionales seleccionables por nombre**

**h:** La función heurística: dado un estado devuelve una aproximación de su distancia hasta `goal`. El valor por defecto es la función 0, comportandose A* en este caso como Dijkstra. Recordar que es conveniente que la heurística sea [monótona](https://en.wikipedia.org/wiki/Consistent_heuristic) para evitar la actualización de cerrados.

**dist:** Función que dados dos estados vecinos devuelve la distancia entre estos. Su valor por defecto es la función constante 1, lo que supone que todos los vecinos están a la misma distancia. Este parámetro es útil en grafos ponderados.

**Ejemplo: Resolviendo el 8-puzzle**

```julia
# La función generadora de vecinos devuelve una lista con los cuatro posibles movimientos.
function neigh(n)
	neighs = []
	index_0 = findfirst(n .== 0)
	if index_0[1] > 1
		push!(neighs, swap(n, index_0, index_0 - CartesianIndex(1,0)))
	end
	if index_0[1] < 3
		push!(neighs, swap(n, index_0, index_0 + CartesianIndex(1,0)))
	end
	if index_0[2] > 1
		push!(neighs, swap(n, index_0, index_0 - CartesianIndex(0,1)))
	end
	if index_0[2] < 3
		push!(neighs, swap(n, index_0, index_0 + CartesianIndex(0,1)))
	end
    neighs
end

s = [8 6 7; 2 5 4; 3 0 1] # Estado inicial
g = [1 2 3; 4 5 6; 7 8 0] # Meta

# Usamos como heúristica el número de casillas diferentes entre un estado y g
A★(s, g, neigh, h = n -> length(findall(n .!= g)))

# output
32-element Array{Any,1}:
 [8 6 7; 2 5 4; 3 0 1]
 [8 6 7; 2 5 4; 3 1 0]
 [8 6 7; 2 5 0; 3 1 4]
 [8 6 0; 2 5 7; 3 1 4]
 [8 0 6; 2 5 7; 3 1 4]
 [8 5 6; 2 0 7; 3 1 4]
 [8 5 6; 0 2 7; 3 1 4]
 [0 5 6; 8 2 7; 3 1 4]
 [5 0 6; 8 2 7; 3 1 4]
 [5 2 6; 8 0 7; 3 1 4]
 ⋮
 [1 5 2; 7 0 3; 8 4 6]
 [1 5 2; 7 4 3; 8 0 6]
 [1 5 2; 7 4 3; 0 8 6]
 [1 5 2; 0 4 3; 7 8 6]
 [1 5 2; 4 0 3; 7 8 6]
 [1 0 2; 4 5 3; 7 8 6]
 [1 2 0; 4 5 3; 7 8 6]
 [1 2 3; 4 5 0; 7 8 6]
 [1 2 3; 4 5 6; 7 8 0]
```


<a target='_blank' href='https://github.com/programacion-competitiva/Algoritmos-utiles/blob/b0dbf8cdf01f73e0d756d473dbc5276f6bdcb8f9/A★/Julia/AStar.jl#L6-L86' class='documenter-source'>source</a><br>


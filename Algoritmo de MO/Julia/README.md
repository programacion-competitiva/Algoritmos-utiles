
<a id='Documentación-del-algoritmo-de-MO-1'></a>

# Documentación del algoritmo de MO



<a id='MOs.MO' href='#MOs.MO'>#</a>
**`MOs.MO`** &mdash; *Function*.



```
MO(array::Array{Int64},
   querys::Array{Tuple{Int64, Int64}},
   n::Int64)
```

Implementa el algoritmo de MO para responder preguntas de la forma "Cuenta los valores en el intervalo [L, R] que se repiten al menos n veces".

**Argumentos posicionales**

**array:** El vector sobre el que respondemos las preguntas.

**querys:** Los límites de los intervalos que conforman las preguntas, con la forma [(L1, R1) (L2, R2) ...].

**n:** El número de repeticiones de los valores que queremos contar.

**Ejemplo:**

Consideremos el vector [1,2,3,1,1,2,1,2,3,1] y n = 3. La respuesta a la pregunta (4, 7) sería 1, ya que en [1,1,2,1] el único valor que se repite 3 veces es el 1.
La respuesta a la pregunta (2, 9) sería 2, ya que en [2,3,1,1,2,1,2,3] el 1 y el 2 se repiten 3 veces.

```julia
MO([1,2,3,1,1,2,1,2,3,1], [(4, 7), (2, 9)], 3)

# output
Dict{Any,Any} with 2 entries:
  (2, 9) => 2
  (4, 7) => 1
```


<a target='_blank' href='https://github.com/programacion-competitiva/Algoritmos-utiles/blob/da5910e58eb5669f957fe96bd437bac75f7b465f/Algoritmo de MO/Julia/MOs.jl#L6-L38' class='documenter-source'>source</a><br>


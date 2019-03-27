module MOs
export MO
using DataStructures


"""
	MO(array::Array{Int64},
	   querys::Array{Tuple{Int64, Int64}},
	   n::Int64)

Implementa el algoritmo de MO para responder preguntas de la forma \"Cuenta los valores en el intervalo [L, R] que se repiten al menos n veces\".


# Argumentos posicionales

**array:** El vector sobre el que respondemos las preguntas.

**querys:** Los límites de los intervalos que conforman las preguntas, con la forma [(L1, R1) (L2, R2) ...].

**n:** El número de repeticiones de los valores que queremos contar.


# Ejemplo:

Consideremos el vector [1,2,3,1,1,2,1,2,3,1] y n = 3.
La respuesta a la pregunta (4, 7) sería 1, ya que en [1,1,2,1] el único valor que se repite 3 veces es el 1.
La respuesta a la pregunta (2, 9) sería 2, ya que en [2,3,1,1,2,1,2,3] el 1 y el 2 se repiten 3 veces.


```jldoctest
MO([1,2,3,1,1,2,1,2,3,1], [(4, 7), (2, 9)], 3)

# output
Dict{Any,Any} with 2 entries:
  (2, 9) => 2
  (4, 7) => 1
```
"""
function MO(array::Array{Int64}, querys::Array{Tuple{Int64, Int64}}, n::Int64)
    # Ordenamos las preguntas en bloques
    blocks = [[] for i in 1:ceil(Int, sqrt(length(array)))]
    for (L, R) in querys
        push!(blocks[div(L, floor(Int, sqrt(length(array))))+1], (L, R))
    end
    # Ordenamos las preguntas de cada bloque por su R
    blocks = [sort(b, by = x -> x[2]) for b in blocks]
    # Juntamos los bloques en una sola lista
    ordered_querys = vcat(blocks...)
    
    answers = Dict()
    answer = 0
    count = zeros(length(array))
    
    function add(position)
        count[array[position]] += 1
        if count[array[position]] == n
            answer += 1
        end
    end
    
    function remove(position)
        count[array[position]] -= 1
        if count[array[position]] == n-1
            answer -= 1
        end
    end
    
    currentL = 0
    currentR = 0
    for (L, R) in ordered_querys
        while currentL < L
            currentL != 0 && remove(currentL)
            currentL += 1
        end
        
        while currentL > L
            currentL -= 1
            add(currentL)
        end
        
        while currentR < R
            currentR += 1
            add(currentR)
        end
        
        while currentR > R
            remove(currentR)
            currentR -= 1
        end
        answers[(L, R)] = answer
    end
    
    return answers
end

end # module

# Algoritmos y teoremas útiles
Recopilatorio de algoritmos básicos, con un enlace a sus pseudocódigos y código fuente en diferentes lenguajes.
También se incluyen algunos resultados que pueden ser útiles.

## Algoritmos básicos

### Algoritmo de Euclides

Encuentra el máximo común divisor entre dos números.

[Pseudocódigo](https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)

### Algoritmo extendido de Euclides

Encuentra el máximo común divisor junto a los coeficientes de Bézout. Es más largo
de implementar, así que si no se necesitan los coeficientes es más fácil hacer el normal.

[Pseudocódigo](https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm#Pseudocode)

## Algoritmos de primalidad

### Criba de Eratóstenes

Permite encontrar la lista de todos los primos por debajo de un natural fijo.

[Pseudocódigo](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Pseudocode)

### Rho de Polard

Algoritmo para factorizar enteros de forma más rápida que a fuerza bruta.

[Pseudocódigo](https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm#Algorithm)


### Criba cuadrática

Algoritmo para factorizar enteros, es el algoritmo más rápido para números que tengan cien dígitos o menos. Es bastante complicado de implementar.

[Pseudocódigo y explicación](http://micsymposium.org/mics_2011_proceedings/mics2011_submission_28.pdf)

## Algoritmos de grafos

### A*

Algoritmo para encontrar un camino de coste mínimo que vaya de un nodo N_1 a otro nodo N_2 en un grafo G.
Hace falta una heurística h(n) que estime cual es el coste mínimo desde n hasta el objetivo, N_2.

[Pseudocódigo](https://en.wikipedia.org/wiki/A*_search_algorithm#Pseudocode)

### Dijkstra

Igual que el A*, este algoritmo encuentra un camino de coste mínimo que vaya de un nodo N_1 a otro nodo N_2 en un grafo G,
pero esta vez no hace falta una función heurística h. De hecho, este algoritmo no es más que un A* donde la heurística es la función 0.

[Pseudocódigo](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm#Pseudocode)

### Kruskal

Encuentra el [árbol generador minimal](https://en.wikipedia.org/wiki/Minimum_spanning_tree) de un grafo G.

[Pseudocódigo](https://en.wikipedia.org/wiki/Kruskal%27s_algorithm#Pseudocode)

### Floyd-Marshall

Encuentra la longitud del camino más corto entre todos los posibles pares de vértices en un grafo G.

[Pseudocódigo](https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm#Pseudocode_[11]_:)

## Algoritmos para juegos de suma cero

### Minimax

Encuentra un movimiento para el jugador actual que maximiza su ganancia suponiendo que su oponente jugará perfecto.

[Pseudocódigo](https://en.wikipedia.org/wiki/Minimax#Pseudocode)

### Alpha-beta pruning

Mejora del minimax. Encuentra también un movimiento para el jugador actual que maximiza la ganancia suponiendo movimientos perfectos,
pero reduce el árbol de búsqueda eliminando ramas innecesarias.

[Pseudocódigo](https://en.wikipedia.org/wiki/Alpha%E2%80%93beta_pruning)

### El teorema de Sprague-Grundy

Este teorema permite hacer algoritmos para obtener la jugada perfecta en [juegos imparciales](https://en.wikipedia.org/wiki/Impartial_game) (a no ser que sean juegos muy específicos o que el problema esté diseñado para usar este teorema, lo usual es que un juego no sea imparcial). La idea es que este teorema relaciona cualquier juego imparcial con un juego del [Nim](https://en.wikipedia.org/wiki/Nim) de forma constructiva, y este tiene un algoritmo rápido para jugar de forma perfecta.

Por añadir contexto, se necesita en la mitad de problemas de la sección Game Theory de Hackerrank.

[Teorema](https://en.wikipedia.org/wiki/Sprague%E2%80%93Grundy_theorem)


## Miscelánea

### Descomposición LU

Factoriza una matriz como producto de una triangular inferior por otra triangular superior. Una vez descompuesta, permite resolver un sistema de ecuaciones lineales con esa matriz de coeficientes.

[Código](https://en.wikipedia.org/wiki/LU_decomposition#C_code_examples)

### Congruencia de Zeller

Fórmula que permite saber en qué día de la semana cayó una fecha solo con el mes, día y año. La pongo en la lista porque, sin esto, este tipo de ejercicios son bastante complicados. Basta con recordar que existe.

[Fórmula](https://en.wikipedia.org/wiki/Zeller%27s_congruence#Implementation_in_software)

### Algoritmo de MO

Algoritmo que resuelve M preguntas sobre intervalos de un vector de N elementos en tiempo O(N*√N). Es necesario para algunos problemas de Hackerrank.

[Explicación](https://blog.anudeep2011.com/mos-algorithm)

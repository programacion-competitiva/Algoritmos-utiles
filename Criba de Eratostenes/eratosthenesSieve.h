#include <vector>
#include <cmath>

/* Criba de Eratóstenes
** Rellena un vector con booleanos para saber si son primos o no hasta un determinado
** límite que se pone como entrada.
** Pseudocódigo: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Pseudocode
**
** Entrada:
** - v vector de enteros que guarda en la posición n un booleano, 1 si n es primo,
**   0 si no lo es.
** - n entero hasta el que se hallan primos.
*/
void eratosthenesSieve(vector<int>& v, int n){
    v.resize(n+1); // Hacemos hueco para que quepa los naturales en [0, n]
    v[0] = 0;
    v[1] = 0; // Se inicializan el 0 y el 1 a no primos

    // Inicializamos el resto a True, es decir, primos por defecto
    for(int i = 2; i < v.size(); i++)
        v[i] = 1;

    // Solo hace falta recorrer los números hasta la raíz de n
    int sq = (int) sqrt(n);

    for(int i = 2; i <= sq; i++){
        // Para cada i que se haya mantenido primo, recorremos sus múltiplos
        // empezando en i^2 y los ponemos a False, ya que no son primos.
        if(v[i] == 1){
            int i_t = i*i;
            for(int j = i_t; j <= n; j += i){
                v[j] = 0;
            }
        }
    }
}

#include <utility>

/* Algoritmo de Euclides extendido
** Encuentra el máximo común divisor entre a y b, junto a los coeficientes de la
** identidad de Bézout de a y b.
** Pseudocódigo: https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm#Pseudocode
**
** Entrada:
** - a y b, los números a los que se les quiere encontrar el máximo común divisor.
**
** Salida:
** - Una pareja (r, (s,t)).
**     + r es el máximo común divisor
**     + (s,t) son los coeficientes tales que a*s+b*t = r
** Nota: El orden de entrada no afecta al resultado. Si se llama con b > a entonces
** el bucle interior se realiza una vez más de lo normal, pero sigue funcionando.
*/
pair<long long, long long> extended_gcd(long long a, long long b){

    // Inicializamos r,s,t y sus versiones del bucle anterior
    long long s = 0, old_s = 1, t = 1, old_t = 0, r = b, old_r = a;

    // Se necesitan dos enteros auxiliares
    long long p,q;
    while(r != 0){
        // q será el cociente de old_r entre r
        q = old_r / r;


        // Se hace (old_r, r) = (r, old_r-q*r)
        // Nota: old_r-q*r es una forma de calcular old_r % r
        // Nota: El algoritmo de Euclides normal sería solo estas tres líneas
        p = r;
        r = old_r-q*r;
        old_r = p;

        // Se hace (old_s, s) = (s, old_s-q*r)
        p = s;
        s = old_s-q*s;
        old_s = p;

        // Se hace (old_t, t) = (t, old_t-q*r)
        p = t;
        t = old_t-q*t;
        old_t = p;
    }

    // Se devuelve el gcd (en old_r) y los coeficientes de Bézout (old_s, old_t)
    return pair<long long, pair<long long, long long> >(old_r, pair<long long, long long>(old_s, old_t));
}

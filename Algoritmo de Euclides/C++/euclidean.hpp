
/* Algoritmo de Euclides
** Encuentra el máximo común divisor entre a y b
** Pseudocódigo: https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations
**
** Entrada:
** - a y b, los enteros entre los que se quiere encontrar el máximo común divisor.
**
** Salida:
** - El máximo común divisor
** Nota: El orden de entrada no afecta al resultado. Si se llama con b > a entonces
** el bucle interior se realiza una vez más de lo normal, pero sigue funcionando.
*/
int gcd(int a, int b){
  int aux;

  while(b != 0){
    // Hasta que lleguemos a una división exacta, encontramos el resto de dividir
    // a entre b, y hacemos el cambio (a, b) = (b, r), donde r es dicho resto.
    aux = b;
    b = a % b;
    a = aux;
  }
  // Cuando b sea cero hemos llegado a una división exacta y el gcd está en a
  return a;
}

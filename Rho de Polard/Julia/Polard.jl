module Polard
export polard

"""
polard(n, t = 100; g = x -> x^2 + 1)

Implementa el método de factorización [ρ de Polard](https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm).
Devuelve una tupla con dos divisores de n.

# Argumentos posicionales

**n:** Número a factorizar.

**t:** Número máximo de iteraciones.


# Argumentos opcionales seleccionables por nombre

**g:** Polinomio generador de la secuencia pseudo-aleatoria.

```jldoctest
# Para factorizar totalmente un número tenemos que llamar a polard recursivamente
using Primes
function fact(n)
    d1, d2 = polard(n)

    if !isprime(d1)
        d1 = fact(d1)
    end

    if !isprime(d2)
        d2 = fact(d2)
    end

    return d1, d2
end

fact(261)

# output
(3, (3, 29))
```
"""
function polard(n, t = 100; g = x -> x^2 + 1)
    x = 1
    y = x
    i = 0

    while i < t
        i += 1
        x = g(x) % n
        y = g(g(y)) % n
        gcd_var = gcd(x - y, n)

        if 1 < gcd_var && gcd_var < n
            return gcd_var, Int(n/gcd_var)
        end
    end

    error("No hay divisores con $t iteraciones.")
end
end

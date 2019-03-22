
<a id='Documentación-A-1'></a>

# Documentación A★



<a id='Polard.polard' href='#Polard.polard'>#</a>
**`Polard.polard`** &mdash; *Function*.



polard(n, t = 100; g = x -> x^2 + 1)

Implementa el método de factorización [ρ de Polard](https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm). Devuelve una tupla con dos divisores de n.

**Argumentos posicionales**

**n:** Número a factorizar.

**t:** Número máximo de iteraciones.

**Argumentos opcionales seleccionables por nombre**

**g:** Polinomio generador de la secuencia pseudo-aleatoria.

```julia
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


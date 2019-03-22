# Documentación A★

```@meta
CurrentModule = AStar
DocTestSetup  = quote
    using AStar
    function swap(m, i1, i2)
      c = copy(m)
      aux = c[i1]
      c[i1] = c[i2]
      c[i2] = aux
      c
    end
end
```

```@docs
A★
```

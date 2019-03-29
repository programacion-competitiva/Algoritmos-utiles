{-  Ordenación por mezcla o mergesort
Puede encontrar la implementación oficial en: 
 http://hackage.haskell.org/package/base-4.12.0.0/docs/src/Data.OldList.html#sort
-}

ordMezcla [a]=[a]
ordMezcla [a,b] = if a < b then [a,b] else [b,a]
ordMezcla x =  ordenaMayor (ordMezcla (take primeros x)) (ordMezcla (drop primeros x))
  where primeros = div (length x) 2

ordenaMayor [] y = y
ordenaMayor x [] = x
ordenaMayor (x:xs) (y:ys) = if x < y then x:ordenaMayor xs (y:ys) else y:ordenaMayor (x:xs) ys

{-
ALGORITMO DE ORDENACIÓN QUICKSORT


Aunque sencialla,
 malo de esta implementación de quicksort es que no es in-place y tiene que generar listas intermedias.

En el código fuente de la librería estándar hay una versión eficiente de quicksort en un comentario 
(y también la implementación del mergesort que usa la función sort)
 http://hackage.haskell.org/package/base-4.12.0.0/docs/src/Data.OldList.html#sort
  -}

quicksort :: Ord(a) => [a] -> [a]
quicksort [] = []
quicksort [a]= [a]
quicksort (x:xs) = quicksort [ y | y<-xs, y <= x] ++[x]++ quicksort[ y| y<- xs, y>x ]

  

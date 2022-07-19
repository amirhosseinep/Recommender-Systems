library(fields)

trainkmeans <- do.call(cbind, out)

Euclidean <- rdist( Test[1:189,],trainkmeans[1:3,] )
Euclidean 
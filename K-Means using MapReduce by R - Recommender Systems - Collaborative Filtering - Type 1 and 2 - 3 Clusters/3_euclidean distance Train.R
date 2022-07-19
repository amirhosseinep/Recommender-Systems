library(fields)

trainkmeans <- do.call(cbind, out)

ET <- rdist( P[1:754,],trainkmeans[1:3,] )
ET 
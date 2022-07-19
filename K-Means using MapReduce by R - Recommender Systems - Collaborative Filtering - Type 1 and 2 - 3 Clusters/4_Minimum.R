k <- apply(Euclidean, 1, function(x) which(x == min(x, na.rm = TRUE)))
k <- t(k)
k
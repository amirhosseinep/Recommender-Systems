idx <- apply(ET, 1, function(x) which(x == min(x, na.rm = TRUE)))
idx <- t(idx)
idx
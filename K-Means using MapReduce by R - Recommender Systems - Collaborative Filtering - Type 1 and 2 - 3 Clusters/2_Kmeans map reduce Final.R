ptm <- proc.time()

Sys.setenv(HADOOP_PREFIX="/hadoop-2.3.0")
Sys.setenv(HADOOP_CMD="/hadoop-2.3.0/bin/hadoop")
Sys.setenv(HADOOP_STREAMING = "/hadoop-2.3.0/share/hadoop/tools/lib/hadoop-streaming-2.3.0.jar")
Sys.setenv(HADOOP_HOME="/hadoop-2.3.0")


library(rhdfs)
library(rmr2)

## @knitr kmeans-signature
kmeans.mr = 
  function(
    P, 
    num.clusters, 
    num.iter, 
    combine, 
    in.memory.combine) {
## @knitr kmeans-dist.fun
    dist.fun = 
      function(C, P) {
        apply(
          C,
          1, 
          function(x) 
            colSums((t(P) - x)^2))}
## @knitr kmeans.map
    kmeans.map = 
      function(., P) {
        nearest = {
          if(is.null(C)) 
            sample(
              1:num.clusters, 
              nrow(P), 
              replace = TRUE)
          else {
            D = dist.fun(C, P)
            nearest = max.col(-D)}}
        if(!(combine || in.memory.combine))
          keyval(nearest, P) 
        else 
          keyval(nearest, cbind(1, P))}
## @knitr kmeans.reduce
    kmeans.reduce = {
      if (!(combine || in.memory.combine) ) 
        function(., P) 
          t(as.matrix(apply(P, 2, mean)))
      else 
        function(k, P) 
          keyval(
            k, 
            t(as.matrix(apply(P, 2, sum))))}
## @knitr kmeans-main-1  
    C = NULL
    for(i in 1:num.iter ) {
      C = 
        values(
          from.dfs(
            mapreduce(
              P, 
              map = kmeans.map,
              reduce = kmeans.reduce)))
      if(combine || in.memory.combine)
        C = C[, -1]/C[, 1]
## @knitr end
#      points(C, col = i + 1, pch = 19)
## @knitr kmeans-main-2
      if(nrow(C) < num.clusters) {
        C = 
          rbind(
            C,
            matrix(
              rnorm(
                (num.clusters - 
                   nrow(C)) * nrow(C)), 
              ncol = nrow(C)) %*% C) }}
        C}
## @knitr end

## sample runs
## 

out = list()

for(be in c("local", "hadoop")) {
  rmr.options(backend = be)
  set.seed(0)
## @knitr kmeans-data
 ##cutted
## @knitr end
#  x11()
#  plot(P)
#  points(P)
  out[[be]] = 
## @knitr kmeans-run    
    kmeans.mr(
      to.dfs(P),
      num.clusters = 3, 
      num.iter = 100,
      combine = FALSE,
      in.memory.combine = FALSE)
## @knitr end
}
Time <- proc.time() - ptm
out
Time
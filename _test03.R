source("cachematrix.R")
m <- matrix(runif(1000*1000), nrow = 1000, ncol = 1000)
mc  <- makeCacheMatrix(m)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

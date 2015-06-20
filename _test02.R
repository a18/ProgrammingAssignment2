source("cachematrix.R")
m <- matrix(runif(100*100), nrow = 100, ncol = 100)
mc  <- makeCacheMatrix(m)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

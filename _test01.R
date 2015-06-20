source("cachematrix.R")
m <- matrix(1:9, nrow = 3, ncol = 3)
m[1,1] <- 0 # To avoid singularity problem
mc  <- makeCacheMatrix(m)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

start <- proc.time()
mi  <- cacheSolve(mc)
print(proc.time() - start)

## Functions in this file contain implementation
## of caching an inverse of a matrix.


## The function creates a special "cache matrix" object 
## that can cache its inverse.
## Params:
## mx - matrix that should be cached
makeCacheMatrix <- function(mx = matrix()) {

  mInv <- NULL
  
  set <- function(y) {
    mx <<- y
    mInv <<- NULL
  }
  
  get <- function() mx
  
  setinv <- function(inv) mInv <<- inv
  
  getinv <- function() mInv
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## The function retrieves inverse of the matrix from the cache
## or computes it, if cached data not yet exists.
## Params:
## cmObj - cache matrix object
cacheSolve <- function(cmObj, ...) {
  mInv <- cmObj$getinv()
  if(!is.null(mInv)) {
    message("getting cached data")
    return(mInv)
  }
  
  data <- cmObj$get()
  mInv <- solve(data, ...)
  cmObj$setinv(mInv)
  mInv
}

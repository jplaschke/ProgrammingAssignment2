## Put comments here that give an overall description of what your
## functions do

## Creates a special "matrix" which allows setting and getting
## of the matrix and the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Calculates the inverse of a matrix, x, and stores in cache if not in cache
## else return the inverser of matrix x from cache

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(m)
    }
    data <- i$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}

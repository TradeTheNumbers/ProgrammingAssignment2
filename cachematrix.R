## makeCacheMatrix will invert an input matrix and store it in cache.

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInvMat <- function(solve) m <<- InvMat
    getInvMat <- function() m
    list (set = set, get = get,
          setInvMat = setInvMat,
          getInvMat = getInvMat)
}

## cacheSolve will attempt to retrieve the inverted matrix from cache, 
## then invert the matrix if it was not already stored in cache.

cacheSolve <- function(x, ...) {
  m <- x$getInvMat()
  if(!is.null(m)){
        message("getting cached data")
        return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setInvMat(m)
  m
  
  
} 


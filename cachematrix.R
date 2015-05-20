## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

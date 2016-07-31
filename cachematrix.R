## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This is developed from the makeVector function and
##as with the makeVector function this function
##will set the value of the matrix, get the value of the matrix then set the 
##value of the inverse and get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse,getinverse = getinverse)
  
}


## Write a short comment describing this function
##this function will check if the value of x$getinverse is not null
## the fuction will return the cached value, otherwise the inverse of the matrix will be
##calculated.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
  
  ## Return a matrix that is the inverse of 'x'
}

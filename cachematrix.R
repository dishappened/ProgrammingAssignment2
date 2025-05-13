## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix <- function(x = matrix()) {
#}
#function creates a special object to store matrix
# and cache its inverse 
# this object is a list of functions 
# set assigns a new matrix to the object and 
# get returns current matrix stored in object 
## Write a short comment describing this function
# function computes inverse of matrix stored in 
# special object mentioned above 
# it retrieves the cached already calculated inverse
# instead of recalculating it 
#cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#}
makeCacheMatrix <- function(x=matrix()){
  inv <- NULL
  set <- function(y) {
    x <<- y 
    inv <<- NULL 
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get,
       setinverse = setinverse,
       getinverse = getinverse)
}
cacheSolve <- function(x, ...){
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
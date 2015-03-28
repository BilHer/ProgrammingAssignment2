## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(H = matrix()) {
  inverse <- NULL
  set <- function(F){
    H <<- F
    inverse <<- NULL
  }
  get <- function() H
  setinverse <- function(Inverse) inverse <<- Inverse
  getinverse <- function() inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(H, ...) 
{
  inverse <- H$getinverse()
  if(!is.null(inverse)){
    message("matrix is in memory")
    return(inverse)
  }
  data <- H$get()
  inverse <- pseudoinverse(data, ...)
  H$setinverse(inverse)
  inverse
}

##these function will sove a matrix and if its already been solved, they will b

## This function will store the matrix and its solution in a list

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL
  init<- function(y){
    x<<- y
    inv<<- NULL
  }
  get<- function() x
  setinv<- function(inverse) inv<<- inverse
  
  getinv<- function() inv
  list( init = init, get = get, setinv= setinv, getinv=getinv  )
  
}


## This function will find the matrix in cache and if not ound, it will solve it and save it into the cache

cacheSolve <- function(x, ...) {
  inv<- x$getinv()
  if(!is.null(inv))
  {
    message("getting cached data")
    return(inv)
  }
  mat<- x$get()
  inv<- solve(mat)
  x$setinv(inv)
  inv
  
  
}




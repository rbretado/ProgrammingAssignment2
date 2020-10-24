## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Clean environment
rm(list = ls())


## CREATE A CACHE MATRIX FUNCTION
cache_matrix <- function(A = matrix()) {
    
    inv = NULL
    set = function(B) {
        
        A <<- B
        inv <<- NULL
    }
    get = function() A
    setinv = function(inverse) inv <<- inverse 
    getinv = function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## CREATE A CACHE SOLUTION FUNCTION
## it works with variable of cache_matrix
cache_solve <- function(x, ...) {
   
    
    inv = x$getinv()
    
    if (!is.null(inv)){
        message("cache data")
        return(inv)
    }
    
    x$setinv(inv)
    return(inv)
}
   

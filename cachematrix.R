## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #make cache Matrix
        L <- NULL
        set <- function(y){
                x <<- y
                L <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) L <<- inverse
        getInverse <- function() L 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        L <- x$getInverse()
        if(!is.null(L)){
                message("getting cached data")
                return(L)
        }
        mat <- x$get()
        L <- solve(mat,...)
        x$setInverse(L)
        L
}

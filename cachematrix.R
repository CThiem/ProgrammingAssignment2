## This R file contains two functions which make it possible to create and
## store information about a matrix x and its inverse. In order to work
## properly, both functions (or their sub-functions) have to be called 
## on an invertible matrix x. E.g. x$set(matrix(1:4,2,2)). 
## Remember that this is in accordance with the assignment instructions.
## To see an example of how both of these functions work, check out
## TestCacheMatrix.R in my GitHub repository.

## makeCacheMatrix() handles the information about the matrix in question
## and actually consists of four sub-functions, which
## 1. Save the matrix in the memory ($set)
## 2. Call the information from the memory ($get)
## 3. Save the inverse of the matrix in memory ($setinverse)
## 4. Call the inverse of the matrix from the memory ($getinverse)

makeCacheMatrix <- function(x = matrix()) {
        I <- NULL
        set <- function(y) {
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) I <<- inverse
        getinverse <- function() I
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function works closely together with the previous one. It uses the 
## stored information by trying to call the inverse of the matrix 
## from the memory and
##      a) if it has already been calculated returns it or
##      b) if it has not yet been calculated calls the solve() function and
##         and puts it into the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        I <- x$getinverse()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <- solve(data, ...)
        x$setinverse(I)
        I
}

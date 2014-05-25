## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function creates a list of functions that 1.set the value to the matrix, 
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = (matrix())) 
  {
    m <- NULL
    set <- function(y)
    {
      x <<- y
      m <<- NULL
    }
    get <- function() {x}
    setinv <- function(solve) {m <<- solve}
    getinv <- function() {m}
    list(set = set, get= get, setinv = setinv, getinv=getinv)
}


## Write a short comment describing this function
## The function calculates the inverse of the matrix
## The function checks to see if the inverse has been already calcualted.
## If yes, it uses the get function to get the inverse matrix. If not, it calculates the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m))
  {
    message ("getting cached data")
    return(m)
  }
  data <- x$get()
  m <-solve(data,...)
  x$setinv(m)
}

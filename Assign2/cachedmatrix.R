makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data)
  x$setmean(m)
  m
}


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  setmat<-function(y){
  x<<-y
  inv<<-NULL
} 
getmat<-function() x
getinv<-function() inv
setinv<-function(invv)
  {
  inv<<-invv
}
list(setmat = setmat, getmat = getmat,
     setinv = setinv,
     getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv))
    {message("cached inv")
  return(inv)}
  data<-x$getmat()
  inv<-solve(data)
  x$setinv(inv)
  inv
}


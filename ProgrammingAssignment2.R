## two functions that will create a special matrix object, cache its inverse
##and compute the inverse of the first function

## makeCacheMatrix function willcreate a special matrix object that can cache
##its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
          set <-function(y=matrix()){
              x<<-y
              m<<-NULL
          }
        get <- function()x
        setmean <-function(mean) m <<-mean
        getmean <-function()m
        list(set=set, get=get,
             setmean=setmean,
             getmean=getmean)
}


## cacheSolve function will compute the inverse of the special matrix returned by
##makeCacheMatrix

cacheSolve <- function(x, ...) {
      m <- x$getmean()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
      data <- x$get()
      m<-mean(data,...)
      x$setmean(m)
      m
      
  ## Return a matrix that is the inverse of 'x'
}

cachemean([2,])
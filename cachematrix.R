makeCacheMatrix <- function(m = matrix()){
##m in square matrix
##makeCacheMatrix function that will contain 4 sub functions namely:
##get, set, getinv, setinv  

inv = NULL  ##set the value to Null and initialize the variable
  
  
get <- function(){
  return(m)
}
##function simply returns what is stored in m

set <- function(y){
  m <<- y
}
##function will set in m the value given as an argument to the set funtion call




setinv <- function(inverse){
  inv <<- inverse
  }
##function for the value of inverse as given in the argument of the function call

getinv <-function(){
  return(inv)
  }

##function will return the inverse of a matrix value as stored

list(get = get, set = set, setinv = setinv, getinv = getinv) ##list will store the names of the subfunctions

}



## Return a matrix that is the inverse of 'x'
cachesolve <- function(m, ...){
  inv = m$getinv()
  
  if(!is.null(inv)){
    message("Getting Cached Data...")
    
    }
  
  else{
    
    inv = solve(m$get(), ...)
  }
  
  m$setinv(inv)
  return(inv)    
}

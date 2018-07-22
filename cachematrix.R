## 1.  Put comments here that give an overall description of what your	

#Ans:-
## Aim in this experiment is to write a pair of functions, namely.

## 2. functions do	
 
#Ans:-
## "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix
 	 
## 3. Write a short comment describing this function	

#Ans:-
## makeCacheMatrix is a function which creates a special "matrix" object that can cache its inverse for the input. 

makeCacheMatrix <- function(x = matrix()) {
-	+  inv <- NULL
+  set <- function(y) {
+    x <<- y
+    inv <<- NULL
+  }
+  get <- function() x
+  setinv <- function(inverse) inv <<- inverse
+  getinv <- function() inv
+  list(set = set, get = get, setinv = setinv, getinv = getinv)
 }
 	 
 	 
## 4.Write a short comment describing this function	

##Ans
## cacheSolve is a such function which computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated then the cachesolve should retrieve the inverse from the cache
 	 
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
+  inv <- x$getinv()
+  if(!is.null(inv)) {
+    message("getting cached result")
+    return(inv)
+  }
+  data <- x$get()
+  inv <- solve(data, ...)
+  x$setinv(inv)
+  inv
 }

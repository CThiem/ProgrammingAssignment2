## The original code was kindly provided by Adam Gruer in the Coursera
## forum for this course. I adjusted it to work with the makeCacheMatrix() 
## and the cacheSolve(). However, I left the original comments unchanged (!)



#Call  the makeVector() function and assign it's
#  return value ( a list of four functions) to a variable, v
#  v is now a list of four functions
x <- makeCacheMatrix()

#use v's set function to create a vector 
#  containing the numbers 20 through to 40
x$set(matrix(1:4,2,2))

#use v's get function to retrieve the vector created 
x$get()

#pass the list v to the cachemean() function
#   the mean of the numeric vector 20:40 should be returned
cacheSolve(x)

#pass the list v to the cachemean() function a second time
#  the mean of the numeric vector 20:40 should be returned
#  also a message "retrieving value from cache" indicating that the mean
#  is not being calculated this time but is being retrieved from the cached
#  value
cacheSolve(x)

#use v's set function to create a new vector 
#  containing the numbers 23,23,34.6,654.35
x$set(matrix(c(23,23,34.6,654.35),2,2))

#pass the list v to the cachemean() function
#   the mean of the numeric vector 23,23,34.6,654.35 should be returned
cacheSolve(x)

#pass the list v to the cachemean() function a second time
#  the mean of the numeric vector 23,23,34.6,654.35 should be returned
#  also a message "retrieving value from cache" indicating that the mean
#  is not being calculated this time but is being retrieved from the cached
#  value
cacheSolve(x)



### --- comment
library(tidyverse)

### --- data
data("mtcars")
print(mtcars)

### --- notes

# - rownames(mtcars) becomes a column
mtcars$model <- rownames(mtcars) 

# - place rownames to rnames
rnames <- rownames(mtcars)

# - fancy things w. functions in R
my_function <- rownames
my_function(mtcars)

# - remove row names
rownames(mtcars) <- NULL

# - remove column from R data.frame
mtcars$model <- NULL

mtcars$model

# - missing data in R
data("mtcars")
mtcars$model <- rownames(mtcars) 
mtcars$model <- NA

# - NULL and NA in computations
x <- 1:10
class(x)
mean(x)
x <- c(1, 2, 3, 4, NA, 6, 7, 8, 9, 10)
mean(x)
x <- c(1, 2, 3, 4, NA, 6, 7, 8, 9, 10)
mean(x, na.rm = TRUE)
median(x)
median(x, na.rm = TRUE)

# - my_mean()
my_mean <- function(x) {
  # - what is the original sample size
  n <- length(x)
  # - remove all NA observations
  z <- x[!is.na(x)]
  # - compute and return mean w/o NAs, use original sample size
  return(sum(z)/n)
}


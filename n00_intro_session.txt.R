### devsify.ai
### Notes for Session00 Installations


# Summon the iris dataset
data(iris)
iris

# R native pipe operator
iris |> 
  dplyr::select("Sepal.Length", "Sepal.Width") |> 
  dplyr::filter(Sepal.Length > 5.843)

# Load tidyverse
library(tidyverse)

# The famous "old" %>% pipe operator
iris %>% s
  dplyr::select("Sepal.Length", "Sepal.Width") %>% 
  dplyr::filter(Sepal.Length > 5.843)








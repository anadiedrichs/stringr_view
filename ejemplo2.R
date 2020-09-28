library(dplyr)
library(stringr)
library(guaguas)

head(guaguas)

set.seed(10)
dataset <- guaguas %>% 
  select(nombre) %>% 
  slice_sample(n=1000)

str_view(dataset$nombre,"Ma")
# traer las coincidencias
str_view(dataset$nombre,"Ma",match = TRUE)
str_view(dataset$nombre,"Y|Z|X",match=T)

# ver las NO coincidencias
str_view(dataset$nombre,"W|Y|Z|X",match=F)
str_view(dataset$nombre,"Ma",match=F)

# ver las vocales en un nombre
str_view(dataset$nombre,"[aeiou]",match=T)


str_view_all(dataset$nombre,"[aeiou]",match=T)



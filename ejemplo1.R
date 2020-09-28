library(dplyr)
library(stringr)
library(guaguas)
  
head(guaguas)

dataset <- guaguas %>% select(nombre) 

str_view(dataset$nombre,"F")

# coincidencias


str_view(dataset$nombre,"F",match = TRUE)

# no coincidencias

str_view(dataset$nombre,"F",match = FALSE)

str_view(dataset$nombre,"ias",match = T)

# ejemplo en  ?str_view
str_view(c("abc", "def", "fgh"), "d|e")
#vs
str_view_all(c("abc", "def", "fgh"), "d|e")
# str_view_all muestra todas las coincidencias

# en nuestro dataset 

str_view(dataset$nombres,"[aeiou]",match=TRUE)

str_view_all(dataset$nombres,"[aeiou]",match=TRUE)
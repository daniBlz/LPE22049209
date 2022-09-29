
# ID SCRIPT ---------------------------------------------------------------

##LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
##PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
##ALUMNO: DANIEL BLÁZQUEZ, EXP 22049209
## SUBIDA PROYECTO OPEN DATA II


# LOADING LIBS ------------------------------------------------------------
install.packages('readxl')

library(tidyverse,httr)
library(readxl)

#df <-httr::GET('kaggle datasets download -d chitwanmanchanda/fraudulent-transactions-data') con Kaggle no parece haber forma de importar datos con url

#Leemos los datos con readr

library(readr)

fraude2 <- read_csv("HandsOn/Proyecto Open Data/fraude2.csv")

View(fraude2)

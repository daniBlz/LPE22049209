
# ID SCRIPT ---------------------------------------------------------------

##LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
##PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
##ALUMNO: DANIEL BLÁZQUEZ, EXP 22049209
## SUBIDA PROYECTO OPEN DATA II


# LOADING LIBS ------------------------------------------------------------
install.packages('readxl')

library(tidyverse,httr)
library(readxl)

df <-httr::GET('https://www.kaggle.com/datasets/chitwanmanchanda/fraudulent-transactions-data/download?datasetVersionNumber=1') 

#Leemos los datos con readr

library(readr)

fraude2 <- read_csv("HandsOn/Proyecto Open Data/fraude2.csv")

glimpse(fraude2)

View(fraude2)

View(df)

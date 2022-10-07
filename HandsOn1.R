
# ID SCRIPT ---------------------------------------------------------------

##LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
##PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
##ALUMNO: DANIEL BLÁZQUEZ, EXP 22049209
##HANDS ON 01


# SHORCUTS ----------------------------------------------------------------

##ctrl + l  = clean console
##ctrl + shift + r = new section


# GIT COMMANDS ------------------------------------------------------------

## git init
##git status
## git add
## git commit -m "mensaje"
## git push -u origin main
## git pull
## git branch -myRama
## git remote add 
## git merge 
## git remote add origin (url.git)
## git clone



# TERMINAL COMMANDS -------------------------------------------------------

##ls
##cd
##pwd
##mkdir
##touch
##nano
##less
##cat
##where/which

# LOADING LIBS ------------------------------------------------------------

install.packages("tidyverse","httr","janitor")
install.packages("pacman")
library(tidyverse,httr)


# BASIC OPERATORS ---------------------------------------------------------

cristina <- 20
clase_lep <-c('Marta','Emilia','Pablo')


# GETTING DATA FROM INTERNET ----------------------------------------------
library('janitor')

url_ <- 'https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/'
res_ <-httr::GET('https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/')
xml2::read_xml(res_$content)


f_raw <-jsonlite::fromJSON(url_)

df_source <- f_raw$ListaEESSPrecio %>% glimpse()

df <-df_source %>% janitor::clean_names() %>% type_convert(locale = locale(decimal_mark =',' )) 

# READING XML FILE --------------------------------------------------------

library(readxl)
preciosEESS_es <- read_excel("C:/Users/danie/Downloads/preciosEESS_es.xls", 
                             skip = 3)
View(preciosEESS_es)

glimpse(preciosEESS_es) ##Ver las variables


# CREATING NEW VARIABLES --------------------------------------------------

##Clasificamos por gasolineras baratas y no baratas

df_low <-df %>% mutate(lowcost = !rotulo %in% c('CESPSA','BP','SHELL','REPSOL'))









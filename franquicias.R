url = 'https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres'
if(!require("pacman")) install.packages("pacman")
load("pacman")
p_load(tidyverse,magrittr,janitor,tidyr)
f_raw <-jsonlite::fromJSON(url)

df_source <- f_raw$ListaEESSPrecio %>% glimpse()

dataset <-df_source %>% janitor::clean_names() %>% type_convert(locale = locale(decimal_mark =',' )) 

dataset%<>% tidyr::extract(rotulo, c('franquicia'),regex = "\\bS\\.?(A|L)\\.?\\b", remove = F)

dataset %<>% mutate(franquicia = ifelse(franquicia == 'A' | franquicia == 'L', TRUE,FALSE) ) 


dataset$franquicia[is.na(dataset$franquicia)] <- FALSE %>% view()
p_load(plyr)

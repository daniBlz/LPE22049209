library(pacman)
pacman::p_load(httr,janitor,tidyverse,leaflet,reader,sparklyr)

url <- 'https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/'

f_raw <-jsonlite::fromJSON(url)

df_source <- f_raw$ListaEESSPrecio %>% glimpse()

dataset <-df_source %>% janitor::clean_names() %>% type_convert(locale = locale(decimal_mark =',' )) 

data_asturias %>% select(rotulo,latitud,longitud_wgs84,precio_gasoleo_a,direccion) %>%   
top_n(-10,precio_gasoleo_a) %>% 
leaflet() %>% addTiles() %>% 
addCircleMarkers(lng = ~longitud_wgs84,lat = ~latitud, popup = ~rotulo, label = ~precio_gasoleo_a, )

data_asturias <-subset(dataset,provincia == 'ASTURIAS')






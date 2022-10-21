
# INTRODUCCION ------------------------------------------------------------

##LENGUAJES DE PROGRAMACIÓN ESTADÍSTICA
##PROFESOR: CHRISTIAN SUCUZHANAY AREVALO
##ALUMNO: DANIEL BLÁZQUEZ, EXP 22049209
##HANDS ON 02


# CODE --------------------------------------------------------------------


# PERFIL GIT --------------------------------------------------------------

browseURL('https://github.com/daniBlz/LPE22049209')


# INSTALLING PACKAGES -----------------------------------------------------

if(!require('pacman')) install.packages('pacman')
pacman::p_load(pacman,magrittr,productplots,psych,RColorBrewer,tidyverse)
#mafrittr = bidirectional piping
#productplot = plotear variables categóricas
#psych = statistics
#RColorBrewer = coloring


# LOAD AND PREPARE DATA ---------------------------------------------------
browseURL('http://j.mp/37Wxvv7')
df<-happy %>% as_tibble()

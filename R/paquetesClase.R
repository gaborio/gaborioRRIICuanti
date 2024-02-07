# Instalando paquetes para clase intro a cuanti RRII
# Created by: Gabriel N. Camargo-Toledo
# Modified by: Gabriel N. Camargo-Toledo
# Modified on: Deb/07/2023
# Contact: gabriel.n.c.t182@gmail.com
# Gaborio Asus VivoBook Pop!_OS 22.04 LTS 8gb Ram R4.3.2

# TODO: volver esto un solo paquete, incluir guias

packlist <- c("tidyverse","haven","readxl", "knitr",
              "jtools", "interactions", "stargazer", 
              "labelled","showtext",
              "nycflights13", "pastecs", "dagitty")


ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

ipak(packlist)


rm(packlist)

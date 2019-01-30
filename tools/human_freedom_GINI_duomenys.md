Duomenų paruošimas
================

Bibliotekos
-----------

``` r
library(tidyr)
library(dplyr)
```

Duomenų pakrovimas
------------------

Pirmiausiai pakrauname Human Freedom Index ir WB GINI indekso duomenis

``` r
load_data <- function(data_dir, ...) {
  laisve_path <- file.path(data_dir, "human_freedom_index", "laisve1.csv")
  gini_path <- file.path(data_dir, "human_freedom_index", "GINI.csv")
  
  laisve<-read.csv(laisve_path)
  gini<-read.csv(gini_path)
  
  
  #Reikia pakeisti lentelės formatą į "long" ir sutvaryti kitas "problemas"
  
  gini<-select(gini, Country.Code, X2008:X2016)
  gini$Country.Code<-as.character(gini$Country.Code)
  gini_long <- gather(gini, metai, indeksas, X2008:X2016, factor_key=TRUE)
  gini_long$metai<-gsub("X", "", gini_long$metai)
  laisve$ISO_code<-as.character(laisve$ISO_code)
  laisve$year<-as.integer(laisve$year)
  gini_long$metai<-as.integer(gini_long$metai)
  
  #Sujungiame lenteles
  europa<-left_join(laisve, gini_long, by=c("ISO_code"="Country.Code", "year" = "metai"))
  
  return(europa)

}
```

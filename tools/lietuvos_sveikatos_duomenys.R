## Bibliotekos

#reikalingos R bibliotekos
library(tidyverse)
library(dplyr)
library(tidyr)
library(readxl)

load_lietuva <- function(data_dir, ...) {
  library(plyr)
  
  virs75pilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "virs75pilnas.xlsx")
  iki17pilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "iki17pilnas.xlsx")
  iki14pilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "iki14pilnas.xlsx")
  iki44pilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "iki44pilnas.xlsx")
  Iki64pilnas_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "Iki64pilnas.xlsx")
  vir65pilnas_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "vir65pilnas.xlsx")
  moteryspilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "moteryspilnas.xlsx")
  vyraipilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "vyraipilnas.xlsx")
  istuokapilnas_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "istuokapilnas.xlsx")
  santuokapilnas_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "santuokapilnas.xlsx")
  gimstamumaspilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "gimstamumaspilnas.xlsx")
  mirtingumaspilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "mirtingumaspilnas.xlsx")
  busimojo_gyvenimo_trukmebeveikpilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "busimojo_gyvenimo_trukmebeveikpilnas.xlsx")
  nedarbaspilnas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "nedarbaspilnas.xlsx")
  savizudyb_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "savizudyb.xlsx")
  pestieji_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "pestieji.xlsx")
  rizikos_seimos_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "rizikos_seimos.xlsx")
  tiketinas_gyvenimas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "tiketinas_gyvenimas.xlsx")
  mete_mokykla_path <-  file.path(data_dir, "lietuvos_sveikatos_duomenys", "mete_mokykla.xlsx")
  ilgalaikis_nedarbas_path <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "ilgalaikis_nedarbas.xlsx")
  gyventoju_skpilnas <- file.path(data_dir, "lietuvos_sveikatos_duomenys", "gyventoju_skpilnas.xlsx")
  
  

virs75pilnas <- read_excel(virs75pilnas_path)
iki17pilnas <- read_excel(iki17pilnas_path)
iki14pilnas <- read_excel(iki14pilnas_path)
iki44pilnas <- read_excel(iki44pilnas_path)
Iki64pilnas <- read_excel(Iki64pilnas_path)
vir65pilnas <- read_excel(vir65pilnas_path)
moteryspilnas <- read_excel(moteryspilnas_path)
vyraipilnas <- read_excel(vyraipilnas_path)
istuokapilnas <- read_excel(istuokapilnas_path)
santuokapilnas <- read_excel(santuokapilnas_path)
gimstamumaspilnas <- read_excel(gimstamumaspilnas_path)
mirtingumaspilnas <- read_excel(mirtingumaspilnas_path)
busimojo_gyvenimo_trukmebeveikpilnas <- read_excel(busimojo_gyvenimo_trukmebeveikpilnas_path)
nedarbaspilnas <- read_excel(nedarbaspilnas_path)
savizudyb <- read_excel(savizudyb_path)
pestieji <- read_excel(pestieji_path)
rizikos_seimos <- read_excel(rizikos_seimos_path)
tiketinas_gyvenimas <- read_excel(tiketinas_gyvenimas_path)
mete_mokykla <- read_excel(mete_mokykla_path)
ilgalaikis_nedarbas <- read_excel(ilgalaikis_nedarbas_path)
gyventoju_skpilnas <- read_excel(gyventoju_skpilnas)



#pakeiciam formata iš "wide" i "long".
virs75pilnas<-virs75pilnas %>% gather(metai, virs75m_proc, c("2001":"2017"), factor_key=TRUE)
iki17pilnas<-iki17pilnas %>% gather(metai, iki17m_proc, c("2001":"2017"), factor_key=TRUE)
iki14pilnas<-iki14pilnas %>% gather(metai, iki14m_proc, c("2001":"2017"), factor_key=TRUE)
iki44pilnas<-iki44pilnas %>% gather(metai, nuo18_iki44_proc, c("2001":"2017"), factor_key=TRUE)
Iki64pilnas<-Iki64pilnas %>% gather(metai, nuo45_iki64m_proc, c("2001":"2017"), factor_key=TRUE)
vir65pilnas<-vir65pilnas %>% gather(metai, virs65m_proc, c("2001":"2017"), factor_key=TRUE)
moteryspilnas<-moteryspilnas %>% gather(metai, moterusk_proc, c("2001":"2017"), factor_key=TRUE)
vyraipilnas<-vyraipilnas %>% gather(metai, vyrusk_proc, c("2001":"2017"), factor_key=TRUE)
istuokapilnas<-istuokapilnas %>% gather(metai, istuokos, c("2001":"2017"), factor_key=TRUE)
santuokapilnas<-santuokapilnas %>% gather(metai, santuokos, c("2001":"2017"), factor_key=TRUE)
gimstamumaspilnas<-gimstamumaspilnas %>% gather(metai, gimstamumas, c("2001":"2017"), factor_key=TRUE)
mirtingumaspilnas<-mirtingumaspilnas %>% gather(metai, mirtingumas, c("2001":"2017"), factor_key=TRUE)
busimojo_gyvenimo_trukmebeveikpilnas<-busimojo_gyvenimo_trukmebeveikpilnas %>% gather(metai, busimojo_gyvenimo_trukme, c("2001":"2017"), factor_key=TRUE)
gyventoju_skpilnas<-gyventoju_skpilnas %>% gather(metai, gyventoju_sk, c("2001":"2017"), factor_key=TRUE)
nedarbaspilnas<-nedarbaspilnas %>% gather(metai, nedarbas, c("2001":"2017"), factor_key=TRUE)
savizudyb<-savizudyb %>% gather(metai, savizudybiu_mirtingumas, c("2014":"2017"), factor_key=TRUE)
pestieji<-pestieji %>% gather(metai, pesciuju_mirtingumas, c("2014":"2017"), factor_key=TRUE)
rizikos_seimos<-rizikos_seimos %>% gather(metai, rizikos_seimu_sk, c("2014":"2017"), factor_key=TRUE)
tiketinas_gyvenimas<-tiketinas_gyvenimas %>% gather(metai, tiketina_gyv_tr, c("2014":"2017"), factor_key=TRUE)
mete_mokykla<-mete_mokykla %>% gather(metai, vaikai_nesimokantys_mok, c("2014":"2017"), factor_key=TRUE)
ilgalaikis_nedarbas<-ilgalaikis_nedarbas %>% gather(metai, ilgalaikis_nedarbas, c("2014":"2017"), factor_key=TRUE)


#Sujungsime dali failu. LT apjungsiu duomenis, kuriu rodikliai renkami 2001-20017 m, o LT1 renkami 2014-2017m.

LT<-join_all(list(iki17pilnas,  iki44pilnas, Iki64pilnas, vir65pilnas, iki14pilnas, virs75pilnas,
                  gyventoju_skpilnas, moteryspilnas, vyraipilnas,
                  santuokapilnas, istuokapilnas, gimstamumaspilnas, mirtingumaspilnas,
                  busimojo_gyvenimo_trukmebeveikpilnas, nedarbaspilnas),
             by=c("name", "metai", "ID", "regionas"), type='left')

LT1<-join_all(list(savizudyb, pestieji, rizikos_seimos, tiketinas_gyvenimas, mete_mokykla,
                   ilgalaikis_nedarbas), by=c("name", "metai", "ID", "regionas"), type='left')




return(list("LT1" = LT1, "LT" = LT))

}



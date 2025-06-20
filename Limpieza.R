library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

df<-read.csv("C:/Users/garat/OneDrive/Documents/peio_garate_recuperacion/netflix_recuperacion.csv")

vis_miss(df)

unique(df[,3],na.rm=TRUE)
df_2<-kNN(df[,c(1,3)], k=5, imp_var = FALSE)


df[,c(1,3)]<-kNN(df[,c(1,3)], k=5, imp_var = FALSE)
vis_miss(df)

dfmovie<-df %>% 
  filter(type == "Movie")
dfmovie<-kNN(dfmovie,k=5, imp_var = FALSE)

dfshow<-df %>% 
  filter(type == "TV Show")
dfshow<-kNN(dfshow,k=5, imp_var = FALSE)

vis_miss(dfmovie)
vis_miss(dfshow)







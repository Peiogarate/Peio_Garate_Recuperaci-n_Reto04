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
df1<-df[,8]
sd(df1, na.rm = TRUE)
df1<-as.data.frame(df1)
summary(df1)

#summary(df[,8])

#2
df<-read.csv("C:/Users/garat/OneDrive/Documents/peio_garate_recuperacion/netflix_recuperacion.csv")
unique(df[,11], na.rm=TRUE)



















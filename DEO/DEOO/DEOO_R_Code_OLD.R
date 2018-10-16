setwd("~/Desktop/PTR/PTRO")
library(readr)
DEOO <- read_csv("~/Desktop/DEO/DEOO/DEOO.csv")
DO = DEOO

DEOO_test_date = split(DETE, DETE$Date)
d = DETE$Date
f = strsplit(d, split = ' ')
library(lubridate)

i = as.Date(DEOO$Date, format='%b %d, %Y')
head(i)
j = year(i)
DEOP = cbind(DEOO, j)
head(DEOP)
HEAD(DEOO)
head(DEOO)
spDE = split(DEOP, j)
library(ggplot2)
HiDE = ggplot(data = spDE, aes(x = DEOP$j))

#Title = DEOO$
head(DEOO)
Title = DEOO$Title
Date = DEOO$Date
Date = as.Date(Date, format='%b %d, %Y')
DEO = data.frame(Title, Date)

HiD = ggplot(data = DEO, aes(x = Date))
HiD + geom_histogram(binwidth = 1)

head(spDE)

HiD2 = ggplot(data = spDE, aes(x = j))

z = year(Date)
head(z)

DEO2 = cbind(Title, Date, z)
head(DEO2)

HiD2 = ggplot(data = DEO2, aes(x=z))

DEO2 = data.frame(Title, Date, z)
head(DEO2)

HiD2 = ggplot(data = DEO2, aes(x=z))
HiD2 + geom_histogram(binwidth = 1)

library(dplyr)

fourteen = DEO2[DEO2$z == 2014]
head(DEO2)
fourteen = DEO2[DEO2$z == '2014']
head(DEO2$z)
DEO2[DEO2$Z == '2014']
DEO2[DEO2$z == "2014"]
DEOS[DEO2$z == "2014",]
DEO2[DEO2$z == "2014",]
fourteen = DEO2[DEO2$z == "2014",]
s = length(fourteen)
s
head(fourteen)
nrow(fourteen)
fourteen = nrow(fourteen)
fourteen
fif = DEO2[DEO2$z == "2015",]
fifteen = nrow(fif)
fifteen
six = DEO2[DEO2$z == "2016",]
sixteen = nrow(six)
sixteen

sev = DEO2[DEO2$z == "2017",]
seventeen = nrow(sev)

eig = DEO2[DEO2$z == "2018",]
eighteen = nrow(eig)

remainder = (1-(283/365))
remainder = (285/365)
l = eighteen/remainder
eighteen2 = round(l) 

growth15 = ((fifteen-fourteen)/fourteen)
growth16 = ((sixteen-fourteen)/fourteen)
growth17 = ((seventeen-fourteen)/fourteen)
growth18 = ((eighteen2-fourteen)/fourteen)

rateofgrowth = c(growth15, growth16, growth17, growth18)

percgrowth = ggplot(data = rateofgrowth, aes(x=num))

rateofgrowth2 = data.frame(rateofgrowth)

percgrowth = ggplot(data = rateofgrowth, aes(x=num))

rateofgrowth3 = c("2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")
rog4 = data.frame(rateofgrowth3, rateofgrowth)
head(rog4)

H2 = ggplot(data = rog4, aes(x=rateofgrowth3))
H2 + geom_bar()

rog4

H3 = ggplot(data = rog4, aes(x = rateofgrowth3, y = rateofgrowth))
H4 = H3 + geom_point()
ggsave("H4.png")
getwd()

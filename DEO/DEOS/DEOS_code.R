setwd("~/Desktop/DEO/DEOS")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
DS1 <- read_csv("~/Desktop/DEO/DEOS/DEOS.csv")

a = as.Date(DS1$Date, format='%b %d, %Y')
b = year(a)
DS = data.frame(DS1$Title, DS1$Date, b)


thr = DS[DS$b == "2013",]
u_thirteen = nrow(thr)
ft = DS[DS$b == "2014",]
v_fourteen = nrow(ft)
fif = DS[DS$b == "2015",]
w_fifteen = nrow(fif)
six = DS[DS$b == "2016",]
x_sixteen = nrow(six)
sev = DS[DS$b == "2017",]
y_seventeen = nrow(sev)
eig = DS[DS$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = eighteen/remainder
eighteen2 = round(l)

growth14 = ((v_fourteen-u_thirteen)/u_thirteen)
growth15 = ((w_fifteen-u_thirteen)/u_thirteen)
growth16 = ((x_sixteen-u_thirteen)/u_thirteen)
growth17 = (y_seventeen-u_thirteen)/u_thirteen
growth18 = (z_eighteen2-u_thirteen)/u_thirteen

rateofgrowth_DS = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_DS = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_DS = data.frame(rateofgrowthdates_DS, rateofgrowth_DS)

rog_DS

HDS = ggplot(data = rog_DS, aes(x = rateofgrowthdates_DS, y = rateofgrowth_DS)) + geom_point()
HDS

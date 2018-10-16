setwd("~/Desktop/DEO/DEOOD")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
DD1 <- read_csv("~/Desktop/DEO/DEOOD/DEOOD.csv")

a = as.Date(DD1$Date, format='%b %d, %Y')
b = year(a)
DD = data.frame(DD1$Title, DD1$Date, b)


thr = DD[DD$b == "2013",]
u_thirteen = nrow(thr)
ft = DD[DD$b == "2014",]
v_fourteen = nrow(ft)
fif = DD[DD$b == "2015",]
w_fifteen = nrow(fif)
six = DD[DD$b == "2016",]
x_sixteen = nrow(six)
sev = DD[DD$b == "2017",]
y_seventeen = nrow(sev)
eig = DD[DD$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = ((v_fourteen-u_thirteen)/u_thirteen)
growth15 = ((w_fifteen-u_thirteen)/u_thirteen)
growth16 = ((x_sixteen-u_thirteen)/u_thirteen)
growth17 = (y_seventeen-u_thirteen)/u_thirteen
growth18 = (z_eighteen2-u_thirteen)/u_thirteen

rateofgrowth_DD = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_DD = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_DD = data.frame(rateofgrowthdates_DD, rateofgrowth_DD)
#
HDD = ggplot(data = rog_DD, aes(x = rateofgrowthdates_DD, y = rateofgrowth_DD)) + geom_point()
HDD


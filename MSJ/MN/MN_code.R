setwd("~/Desktop/MSJ/MN")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
MN1 <- read_csv("~/Desktop/MSJ/MN/MSJN.csv")

a = as.Date(MN1$Date, format='%b %d, %Y')
b = year(a)
MN = data.frame(MN1$Title, MN1$Date, b)


thr = MN[MN$b == "2013",]
u_thirteen = nrow(thr)
ft = MN[MN$b == "2014",]
v_fourteen = nrow(ft)
fif = MN[MN$b == "2015",]
w_fifteen = nrow(fif)
six = MN[MN$b == "2016",]
x_sixteen = nrow(six)
sev = MN[MN$b == "2017",]
y_seventeen = nrow(sev)
eig = MN[MN$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = 0
growth17 = (y_seventeen-v_fourteen)/x_sixteen
growth18 = (z_eighteen2-v_fourteen)/x_sixteen

rateofgrowth_MN = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_MN = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_MN = data.frame(rateofgrowthdates_MN, rateofgrowth_MN)

HMN = ggplot(data = rog_MN, aes(x = rateofgrowthdates_MN, y = rateofgrowth_MN)) + geom_point()
HMN

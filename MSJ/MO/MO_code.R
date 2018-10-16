setwd("~/Desktop/MSJ/MO")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
MO1 <- read_csv("~/Desktop/MSJ/MO/MSJO_2_10_11.csv")

a = as.Date(MO1$Date, format='%b %d, %Y')
b = year(a)
MO = data.frame(MO1$Title, MO1$Date, b)


thr = MO[MO$b == "2013",]
u_thirteen = nrow(thr)
ft = MO[MO$b == "2014",]
v_fourteen = nrow(ft)
fif = MO[MO$b == "2015",]
w_fifteen = nrow(fif)
six = MO[MO$b == "2016",]
x_sixteen = nrow(six)
sev = MO[MO$b == "2017",]
y_seventeen = nrow(sev)
eig = MO[MO$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = 0
growth17 = (y_seventeen-v_fourteen)/x_sixteen
growth18 = (z_eighteen2-v_fourteen)/x_sixteen

rateofgrowth_MO = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_MO = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_MO = data.frame(rateofgrowthdates_MO, rateofgrowth_MO)

HMO = ggplot(data = rog_MO, aes(x = rateofgrowthdates_MO, y = rateofgrowth_MO)) + geom_point()
HMO

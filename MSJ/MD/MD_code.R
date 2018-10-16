setwd("~/Desktop/MSJ/MD")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
MD1 <- read_csv("~/Desktop/MSJ/Md/MSJOD.csv")

a = as.Date(MD1$Date, format='%b %d, %Y')
b = year(a)
MD = data.frame(MD1$Title, MD1$Date, b)


thr = MD[MD$b == "2013",]
u_thirteen = nrow(thr)
ft = MD[MD$b == "2014",]
v_fourteen = nrow(ft)
fif = MD[MD$b == "2015",]
w_fifteen = nrow(fif)
six = MD[MD$b == "2016",]
x_sixteen = nrow(six)
sev = MD[MD$b == "2017",]
y_seventeen = nrow(sev)
eig = MD[MD$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = 0
growth17 = (y_seventeen-v_fourteen)/x_sixteen
growth18 = (z_eighteen2-v_fourteen)/x_sixteen

rateofgrowth_MD = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_MD = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_MD = data.frame(rateofgrowthdates_MD, rateofgrowth_MD)

HMD = ggplot(data = rog_MD, aes(x = rateofgrowthdates_MD, y = rateofgrowth_MD)) + geom_point()
HMD

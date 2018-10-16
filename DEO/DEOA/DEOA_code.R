setwd("~/Desktop/DEO/DEOA")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
DA1 <- read_csv("~/Desktop/DEO/DEOA/DEOA.csv")

a = as.Date(DA1$Date, format='%b %d, %Y')
b = year(a)
DA = data.frame(DA1$Title, DA1$Date, b)


thr = DA[DA$b == "2013",]
u_thirteen = nrow(thr)
ft = DA[DA$b == "2014",]
v_fourteen = nrow(ft)
fif = DA[DA$b == "2015",]
w_fifteen = nrow(fif)
six = DA[DA$b == "2016",]
x_sixteen = nrow(six)
sev = DA[DA$b == "2017",]
y_seventeen = nrow(sev)
eig = DA[DA$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = ((w_fifteen-v_fourteen)/v_fourteen)
growth16 = ((x_sixteen-v_fourteen)/v_fourteen)
growth17 = (y_seventeen-v_fourteen)/v_fourteen
growth18 = (z_eighteen2-v_fourteen)/v_fourteen

rateofgrowth_DA = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_DA = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_DA = data.frame(rateofgrowthdates_DA, rateofgrowth_DA)
#
HDA = ggplot(data = rog_DA, aes(x = rateofgrowthdates_DA, y = rateofgrowth_DA)) + geom_point()
HDA

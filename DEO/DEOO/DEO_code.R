setwd("~/Desktop/DEO/DEOO")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
DO1 <- read_csv("~/Desktop/DEO/DEOO/DEOO.csv")

a = as.Date(DO1$Date, format='%b %d, %Y')
b = year(a)
DO = data.frame(DO1$Title, DO1$Date, b)


thr = DO[DO$b == "2013",]
u_thirteen = nrow(thr)
ft = DO[DO$b == "2014",]
v_fourteen = nrow(ft)
#27
fif = DO[DO$b == "2015",]
w_fifteen = nrow(fif)
#17
six = DO[DO$b == "2016",]
x_sixteen = nrow(six)
#11
sev = DO[DO$b == "2017",]
y_seventeen = nrow(sev)
#15
eig = DO[DO$b == "2018",]
z_eighteen = nrow(eig)
#15

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = ((w_fifteen-v_fourteen)/v_fourteen)
growth16 = ((x_sixteen-v_fourteen)/v_fourteen)
growth17 = (y_seventeen-v_fourteen)/v_fourteen
growth18 = (z_eighteen2-v_fourteen)/v_fourteen

rateofgrowth_DO = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_DO = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_DO = data.frame(rateofgrowthdates_DO, rateofgrowth_DO)

HDO = ggplot(data = rog_DO, aes(x = rateofgrowthdates_DO, y = rateofgrowth_DO)) + geom_point()
HDO

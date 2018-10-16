setwd("~/Desktop/DEON/DEON")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
DN1 <- read_csv("~/Desktop/DEO/DEON/DEON.csv")

a = as.Date(DN1$Date, format='%b %d, %Y')
b = year(a)
DN = data.frame(DN1$Title, DN1$Date, b)


thr = DN[DN$b == "2013",]
u_thirteen = nrow(thr)
ft = DN[DN$b == "2014",]
v_fourteen = nrow(ft)
fif = DN[DN$b == "2015",]
w_fifteen = nrow(fif)
six = DN[DN$b == "2016",]
x_sixteen = nrow(six)
sev = DN[DN$b == "2017",]
y_seventeen = nrow(sev)
eig = DN[DN$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = h_eighteen/remainder
h_eighteen2 = round(l)

growth14 = 0
growth15 = ((e_fifteen-d_fourteen)/d_fourteen)
growth16 = ((f_sixteen-d_fourteen)/d_fourteen)
growth17 = (g_seventeen-d_fourteen)/d_fourteen
growth18 = (h_eighteen2-d_fourteen)/d_fourteen

rateofgrowth_DN = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_DN = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_DN = data.frame(rateofgrowthdates_DN, rateofgrowth_DN)

HDN = ggplot(data = rog_DN, aes(x = rateofgrowthdates_DN, y = rateofgrowth_DN)) + geom_point()
HDN

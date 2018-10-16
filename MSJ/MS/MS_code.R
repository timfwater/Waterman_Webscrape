setwd("~/Desktop/MSJ/MS")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
MS1 <- read_csv("~/Desktop/MSJ/MS/MSJS_10_11.csv")

a = as.Date(MS1$Date, format='%b %d, %Y')
b = year(a)
MS = data.frame(MS1$Title, MS1$Date, b)


thr = MS[MS$b == "2013",]
u_thirteen = nrow(thr)
ft = MS[MS$b == "2014",]
v_fourteen = nrow(ft)
fif = MS[MS$b == "2015",]
w_fifteen = nrow(fif)
six = MS[MS$b == "2016",]
x_sixteen = nrow(six)
sev = MS[MS$b == "2017",]
y_seventeen = nrow(sev)
eig = MS[MS$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = 0
growth17 = (y_seventeen-v_fourteen)/x_sixteen
growth18 = (z_eighteen2-v_fourteen)/x_sixteen

rateofgrowth_MS = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_MS = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_MS = data.frame(rateofgrowthdates_MS, rateofgrowth_MS)

HMS = ggplot(data = rog_MS, aes(x = rateofgrowthdates_MS, y = rateofgrowth_MS)) + geom_point()
HMS

setwd("~/Desktop/MSJ/MA")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
MA1 <- read_csv("~/Desktop/MSJ/MA/MSJA.csv")



a = as.Date(MA1$Date, format='%b %d, %Y')
b = year(a)
MA = data.frame(MA1$Title, MA1$Date, b)


thr = MA[MA$b == "2013",]
u_thirteen = nrow(thr)
ft = MA[MA$b == "2014",]
v_fourteen = nrow(ft)
fif = MA[MA$b == "2015",]
w_fifteen = nrow(fif)
six = MA[MA$b == "2016",]
x_sixteen = nrow(six)
sev = MA[MA$b == "2017",]
y_seventeen = nrow(sev)
eig = MA[MA$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = 0
growth17 = (y_seventeen-v_fourteen)/x_sixteen
growth18 = (z_eighteen2-v_fourteen)/x_sixteen

rateofgrowth_MA = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_MA = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_MA = data.frame(rateofgrowthdates_MA, rateofgrowth_MA)

HMA = ggplot(data = rog_MA, aes(x = rateofgrowthdates_MA, y = rateofgrowth_MA)) + geom_point()
HMA

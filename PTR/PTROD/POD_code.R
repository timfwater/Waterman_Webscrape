setwd("~/Desktop/PTR/PTROD")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(reshape2)
PD1 <- read_csv("~/Desktop/PTR/PTROD/PTROD.csv")

extDate1_PD = PD1$Date

SPLIT_PD = strsplit(extDate1_PD, ' ')

extDate2_PD = lapply(SPLIT_PD, function(x) x[4])

un_PD = unlist(extDate2_PD, use.names = FALSE)

a = as.Date(un_PD, format= '%Y')
b = year(a)

PD = data.frame(PD1$Title, b)

thr = PD[PD$b == "2013",]
u_thirteen = nrow(thr)
ft = PD[PD$b == "2014",]
v_fourteen = nrow(ft)
fif = PD[PD$b == "2015",]
w_fifteen = nrow(fif)
six = PD[PD$b == "2016",]
x_sixteen = nrow(six)
sev = PD[PD$b == "2017",]
y_seventeen = nrow(sev)
eig = PD[PD$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = (w_fifteen-v_fourteen)/v_fourteen
growth16 = (x_sixteen-v_fourteen)/v_fourteen
growth17 = (y_seventeen-v_fourteen)/v_fourteen
growth18 = (z_eighteen2-v_fourteen)/v_fourteen

rateofgrowth_PD = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_PD = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_PD = data.frame(rateofgrowthdates_PD, rateofgrowth_PD)

HPD = ggplot(data = rog_PD, aes(x = rateofgrowthdates_PD, y = rateofgrowth_PD)) + geom_point()
HPD

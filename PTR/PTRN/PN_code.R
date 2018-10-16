setwd("~/Desktop/PTR/PTRN")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(reshape2)
PN1 <- read_csv("~/Desktop/PTR/PTRN/PTRN.csv")

extDate1_PN = PN1$Date

SPLIT_PN = strsplit(extDate1_PN, ' ')

extDate2_PN = lapply(SPLIT_PN, function(x) x[4])

un_PN = unlist(extDate2_PN, use.names = FALSE)

a = as.Date(un_PN, format= '%Y')
b = year(a)

PN = data.frame(PN1$Title, b)

thr = PN[PN$b == "2013",]
u_thirteen = nrow(thr)
ft = PN[PN$b == "2014",]
v_fourteen = nrow(ft)
fif = PN[PN$b == "2015",]
w_fifteen = nrow(fif)
six = PN[PN$b == "2016",]
x_sixteen = nrow(six)
sev = PN[PN$b == "2017",]
y_seventeen = nrow(sev)
eig = PN[PN$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = 0
growth16 = (x_sixteen-w_fifteen)/w_fifteen
growth17 = (y_seventeen-w_fifteen)/w_fifteen
growth18 = (z_eighteen2-w_fifteen)/w_fifteen

rateofgrowth_PN = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_PN = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_PN = data.frame(rateofgrowthdates_PN, rateofgrowth_PN)

HPN = ggplot(data = rog_PN, aes(x = rateofgrowthdates_PN, y = rateofgrowth_PN)) + geom_point()
HPN

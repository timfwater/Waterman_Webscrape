setwd("~/Desktop/PTR/PTRS")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(reshape2)
PS1 <- read_csv("~/Desktop/PTR/PTRS/PTRS.csv")

extDate1_PS = PS1$Date

SPLIT_PS = strsplit(extDate1_PS, ' ')

extDate2_PS = lapply(SPLIT_PS, function(x) x[4])

un_PS = unlist(extDate2_PS, use.names = FALSE)

a = as.Date(un_PS, format= '%Y')
b = year(a)

PS = data.frame(PS1$Title, b)

thr = PS[PS$b == "2013",]
u_thirteen = nrow(thr)
ft = PS[PS$b == "2014",]
v_fourteen = nrow(ft)
fif = PS[PS$b == "2015",]
w_fifteen = nrow(fif)
six = PS[PS$b == "2016",]
x_sixteen = nrow(six)
sev = PS[PS$b == "2017",]
y_seventeen = nrow(sev)
eig = PS[PS$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = (v_fourteen-u_thirteen)/u_thirteen
growth15 = (w_fifteen-u_thirteen)/u_thirteen
growth16 = (x_sixteen-u_thirteen)/u_thirteen
growth17 = (y_seventeen-u_thirteen)/u_thirteen
growth18 = (z_eighteen2-u_thirteen)/u_thirteen

rateofgrowth_PS = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_PS = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_PS = data.frame(rateofgrowthdates_PS, rateofgrowth_PS)

HPS = ggplot(data = rog_PS, aes(x = rateofgrowthdates_PS, y = rateofgrowth_PS)) + geom_point()
HPS

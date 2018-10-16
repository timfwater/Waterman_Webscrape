setwd("~/Desktop/PTR/PTRA")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(reshape2)
PA1 <- read_csv("~/Desktop/PTR/PTRA/PTRA.csv")

extDate1 = PA1$Date
extDate2 = lapply(SPLIT, function(x) x[4])

head(extDate2)

vec = unlist(extDate2, use.names = FALSE)

extDate1
SPLIT = strsplit(extDate1, ' ')

a = as.Date(vec, format= '%Y')
b = year(vec1)
head(extDate2, 100)

PA = data.frame(PA1$Title, b)

thr = PA[PA$b == "2013",]
u_thirteen = nrow(thr)
ft = PA[PA$b == "2014",]
v_fourteen = nrow(ft)
fif = PA[PA$b == "2015",]
w_fifteen = nrow(fif)
six = PA[PA$b == "2016",]
x_sixteen = nrow(six)
sev = PA[PA$b == "2017",]
y_seventeen = nrow(sev)
eig = PA[PA$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = (v_fourteen-u_thirteen)/u_thirteen
growth15 = (w_fifteen-u_thirteen)/u_thirteen
growth16 = (x_sixteen-u_thirteen)/u_thirteen
growth17 = (y_seventeen-u_thirteen)/u_thirteen
growth18 = (z_eighteen2-u_thirteen)/u_thirteen

rateofgrowth_PA = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_PA = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_PA = data.frame(rateofgrowthdates_PA, rateofgrowth_PA)

HPA = ggplot(data = rog_PA, aes(x = rateofgrowthdates_PA, y = rateofgrowth_PA)) + geom_point()
HPA

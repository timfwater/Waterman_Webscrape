setwd("~/Desktop/PTR/PTRO")
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(reshape2)
PO1 <- read_csv("~/Desktop/PTR/PTRO/PTRO.csv")

extDate1_PO = PO1$Date

SPLIT_PO = strsplit(extDate1_PO, ' ')

extDate2_PO = lapply(SPLIT_PO, function(x) x[4])

un_PO = unlist(extDate2_PO, use.names = FALSE)

a = as.Date(un_PO, format= '%Y')
b = year(a)
head(extDate2, 100)
PO = data.frame(PO1$Title, b)

thr = PO[PO$b == "2013",]
u_thirteen = nrow(thr)
ft = PO[PO$b == "2014",]
v_fourteen = nrow(ft)
fif = PO[PO$b == "2015",]
w_fifteen = nrow(fif)
six = PO[PO$b == "2016",]
x_sixteen = nrow(six)
sev = PO[PO$b == "2017",]
y_seventeen = nrow(sev)
eig = PO[PO$b == "2018",]
z_eighteen = nrow(eig)

remainder = (285/365)
l = z_eighteen/remainder
z_eighteen2 = round(l)

growth14 = 0
growth15 = (w_fifteen-v_fourteen)/v_fourteen
growth16 = (x_sixteen-v_fourteen)/v_fourteen
growth17 = (y_seventeen-v_fourteen)/v_fourteen
growth18 = (z_eighteen2-v_fourteen)/v_fourteen

rateofgrowth_PO = c(growth14, growth15, growth16, growth17, growth18)

rateofgrowthdates_PO = c("2014 Growth", "2015 Growth", "2016 Growth", "2017 Growth", "2018 Growth")

rog_PO = data.frame(rateofgrowthdates_PO, rateofgrowth_PO)

HPO = ggplot(data = rog_PO, aes(x = rateofgrowthdates_PO, y = rateofgrowth_PO)) + geom_point()
HPO

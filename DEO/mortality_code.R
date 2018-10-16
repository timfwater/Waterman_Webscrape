DE_S_deaths = c(13.2, 13.2, 12.6, 11.5, 11.3, 11.1)
WI_S_deaths = c(14.8, 13.1, 14.7, 14.7)
PA_S_deaths = c(14.0, 13.3, 14.0, 14.7)

DE_O_deaths = c(12.8, 13.9, 14.8, 16.9, 19.3, 21.7)
WI_O_deaths = c(10.6, 11.1, 11.2, 15.8, 17.9, 21.0)
PA_O_deaths = c(7.8, 9, 11.2, 18.5, 23.6, 28.7)

DE_O_deaths =

xaxis = c(1,2,3,4)

#DES_14 = (DE_S_deaths[2]-DE_S_deaths[1])
#DES_15 = (DE_S_deaths[3]-DE_S_deaths[1])
#DES_16 = (DE_S_deaths[4]-DE_S_deaths[1])

#DESS = c(DES_14, DES_15, DES_16)
#DESS

#aa = slope(xaxis, DESS)
#ab = cor(xaxis, DESS)

#11.5*(1-(1-.985))
#11.3*(1-(1-.985))

#WIS_14 = (WI_S_deaths[2]-WI_S_deaths[1])
#WIS_15 = (WI_S_deaths[3]-WI_S_deaths[1])
#WIS_16 = (WI_S_deaths[4]-WI_S_deaths[1])

#WIS = c(WIS_14, WIS_15, WIS_16)

#aw = cor(xaxis, WIS)

DEO_14 = (DE_O_deaths[2]-DE_O_deaths[1])
DEO_15 = (DE_O_deaths[3]-DE_O_deaths[1])
DEO_16 = (DE_O_deaths[4]-DE_O_deaths[1])

DEO = c(DEO_14, DEO_15, DEO_16)
DEO
DEO2 = mean(DEO)

WIO_14 = (WI_O_deaths[2]-WI_O_deaths[1])
WIO_15 = (WI_O_deaths[3]-WI_O_deaths[1])
WIO_16 = (WI_O_deaths[4]-WI_O_deaths[1])

WIO = c(WIO_14, WIO_15, WIO_16)
WIO2 = mean(WIO)

PAO_14 = (PA_O_deaths[2]-PA_O_deaths[1])
PAO_15 = (PA_O_deaths[3]-PA_O_deaths[1])
PAO_16 = (PA_O_deaths[4]-PA_O_deaths[1])

PAO = c(PAO_14, PAO_15, PAO_16)
PAO2 = mean(PAO)

DEOI_2014 = ((DE_O_deaths[2]-DE_O_deaths[1])/DE_O_deaths[1])*100
DEOI_2015 = ((DE_O_deaths[3]-DE_O_deaths[1])/DE_O_deaths[1])*100
DEOI_2016 = ((DE_O_deaths[4]-DE_O_deaths[1])/DE_O_deaths[1])*100
DEOI_2017 = ((DE_O_deaths[5]-DE_O_deaths[1])/DE_O_deaths[1])*100
DEOI_2018 = ((DE_O_deaths[6]-DE_O_deaths[1])/DE_O_deaths[1])*100

DEO2 = c(DEOI_2014, DEOI_2015, DEOI_2016, DEOI_2017, DEOI_2018)

WIOI_2014 = ((WI_O_deaths[2]-WI_O_deaths[1])/WI_O_deaths[1])*100
WIOI_2015 = ((WI_O_deaths[3]-WI_O_deaths[1])/WI_O_deaths[1])*100
WIOI_2016 = ((WI_O_deaths[4]-WI_O_deaths[1])/WI_O_deaths[1])*100
WIOI_2017 = ((WI_O_deaths[5]-WI_O_deaths[1])/WI_O_deaths[1])*100
WIOI_2018 = ((WI_O_deaths[6]-WI_O_deaths[1])/WI_O_deaths[1])*100

WIO2 = c(WIOI_2014, WIOI_2015, WIOI_2016, WIOI_2017, WIOI_2018)

PAOI_2014 = ((PA_O_deaths[2]-PA_O_deaths[1])/PA_O_deaths[1])*100
PAOI_2015 = ((PA_O_deaths[3]-PA_O_deaths[1])/PA_O_deaths[1])*100
PAOI_2016 = ((PA_O_deaths[4]-PA_O_deaths[1])/PA_O_deaths[1])*100
PAOI_2017 = ((PA_O_deaths[5]-PA_O_deaths[1])/PA_O_deaths[1])*100
PAOI_2018 = ((PA_O_deaths[6]-PA_O_deaths[1])/PA_O_deaths[1])*100

PAO2 = c(PAOI_2014, PAOI_2015, PAOI_2016, PAOI_2017, PAOI_2018)

Scrape_Combined_Overdoses = data.frame(rateofgrowthdates_DA, rateofgrowth_DO, rateofgrowth_DD, rateofgrowth_DS, rateofgrowth_DN, rateofgrowth_DA, rateofgrowth_MO, rateofgrowth_MD, rateofgrowth_MS, rateofgrowth_MN, rateofgrowth_MA, rateofgrowth_PO, rateofgrowth_PD, rateofgrowth_PS, rateofgrowth_PN, rateofgrowth_PA, DEO2, PAO2, WIO2)

getwd()

write.csv(Scrape_Combined_Overdoses, file="Scraped_Combined_Overdoses.csv")

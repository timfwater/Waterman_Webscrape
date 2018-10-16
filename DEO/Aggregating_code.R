setwd("~/Desktop/DEO")

DE_combined = data.frame(rateofgrowthdates_DA, rateofgrowth_DO, rateofgrowth_DD, rateofgrowth_DS, rateofgrowth_DN, rateofgrowth_DA)

DE_combined

write.csv(DE_combined, file="DE_combined.csv")

setwd("~Desktop/MSJ")

M_combined = data.frame(rateofgrowthdates_MA, rateofgrowth_MO, rateofgrowth_MD, rateofgrowth_MS, rateofgrowth_MN, rateofgrowth_MA)

M_combined

write.csv(M_combined, file="M_combined.csv")

#setwd("~Desktop/PTR")

P_combined = data.frame(rateofgrowthdates_PA, rateofgrowth_PO, rateofgrowth_PD, rateofgrowth_PS, rateofgrowth_PN, rateofgrowth_PA)

getwd()

write.csv(M_combined, file="P_combined.csv")

Scrape_Combined = data.frame(rateofgrowthdates_DA, rateofgrowth_DO, rateofgrowth_DD, rateofgrowth_DS, rateofgrowth_DN, rateofgrowth_DA, rateofgrowth_MO, rateofgrowth_MD, rateofgrowth_MS, rateofgrowth_MN, rateofgrowth_MA, rateofgrowth_PO, rateofgrowth_PD, rateofgrowth_PS, rateofgrowth_PN, rateofgrowth_PA)

write.csv(Scrape_Combined, file="Scraped_Combined.csv")

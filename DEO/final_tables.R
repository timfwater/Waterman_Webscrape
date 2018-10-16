library(ggplot2)

work = Scraped_Combined_Overdoses2

Across_N = data.frame(work$rateofgrowthdates_DA, work$rateofgrowth_DN, work$rateofgrowth_MN, work$rateofgrowth_PN)

AN = ggplot(data = Across_N, aes(x=work$rateofgrowthdates_DA))
AN + geom_point()


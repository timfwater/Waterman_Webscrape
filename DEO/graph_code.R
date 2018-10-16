final_data = Scraped_Combined_Overdoses4
library(ggplot2)
graph1 = ggplot(data=final_data, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Delaware`), colour = "yellow") + 
  geom_point(aes(y = `Growth in Overdose Conversation Delaware`), colour = "purple") +
  geom_point(aes(y = `Growth in Suicide Conversation Delaware`), colour = "green") +
  geom_point(aes(y = `Growth in Naloxone Conversation Delaware`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Delaware`), colour = "blue") +

graph1
grapha = graph1

graph_Delaware = grapha + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Death of Despair Topics: Delaware") + guides(color = "legend")


# Change the legend
lp + scale_fill_manual(name  ="Category",
                          breaks=c("Female", "Male"),
                          labels=c("Woman", "Man"))
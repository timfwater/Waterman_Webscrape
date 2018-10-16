final_data = Scraped_Combined_Overdoses4
library(ggplot2)

graph1 = ggplot(data=final_data, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Delaware`), colour = "yellow") + 
  geom_point(aes(y = `Growth in Overdose Conversation Delaware`), colour = "purple") +
  geom_point(aes(y = `Growth in Suicide Conversation Delaware`), colour = "green") +
  geom_point(aes(y = `Growth in Naloxone Conversation Delaware`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Delaware`), colour = "blue")

graph_Delaware = graph1 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Death of Despair Topics: Delaware")
graph_Delaware

ggsave("Delaware.png")

graph2 = ggplot(data=final_data, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Wisconson`), colour = "yellow") + 
  geom_point(aes(y = `Growth in Overdose Conversation Wisconsin`), colour = "purple") +
  geom_point(aes(y = `Growth in Suicide Conversation Wisconsin`), colour = "green") +
  geom_point(aes(y = `Growth in Naloxone Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Wisconsin`), colour = "blue")

graph_Wisconsin = graph2 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Death of Despair Topics: Wisconsin")
graph_Wisconsin

ggsave("Wisconsin.png")

graph3 = ggplot(data=final_data, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Pennsylvania`), colour = "yellow") + 
  geom_point(aes(y = `Growth in Overdose Conversation Pennsylvania`), colour = "purple") +
  geom_point(aes(y = `Growth in Suicide Conversation Pennsylvania`), colour = "green") +
  geom_point(aes(y = `Growth in Naloxone Conversation Pennsylvania`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Pennsylvania`), colour = "blue")

graph_Pennsylvania = graph3 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Death of Despair Topics: Wisconsin") + guides(color = "legend")
graph_Pennsylvania
ggsave("Wisconsin.png")









final_data2 = final_data

final_data3 = final_data2 %>%
  gather(key="State", value="Opioid", c(3:15))
head(final_data3)

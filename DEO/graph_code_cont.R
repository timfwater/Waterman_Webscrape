final_data2 = Scraped_Combined_Overdoses5

graph3 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Pennsylvania`), colour = "yellow") + 
  geom_point(aes(y = `Growth in Overdose Conversation Pennsylvania`), colour = "purple") +
  geom_point(aes(y = `Growth in Suicide Conversation Pennsylvania`), colour = "green") +
  geom_point(aes(y = `Growth in Naloxone Conversation Pennsylvania`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Pennsylvania`), colour = "blue")

graph_Pennsylvania = graph3 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Death of Despair Topics: Pennsylvania")
graph_Pennsylvania

ggsave("Pennsylvania.png")

graph4 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Opioid Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Opioid Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Opioid Conversation Pennsylvania`), colour = "green")

graph_opioid = graph4 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Opioid Conversation")
graph_opioid
ggsave("Opioid.png")

graph5 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Overdose Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Overdose Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Overdose Conversation Pennsylvania`), colour = "green")

graph_overdose = graph5 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Overdose Conversation")
graph_overdose
ggsave("Overdose.png")

graph6 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Naloxone Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Naloxone Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Naloxone Conversation Pennsylvania`), colour = "green")

graph_naloxone = graph6 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Naloxone Conversation")
graph_naloxone
ggsave("Naloxone.png")

graph7 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Suicide Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Suicide Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Suicide Conversation Pennsylvania`), colour = "green")

graph_suicide = graph7 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Suicide Conversation")
graph_suicide
ggsave("Suicide.png")

graph8 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Alcoholism Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Alcoholism Conversation Wisconsin`), colour = "red") +
  geom_point(aes(y = `Growth in Alcoholism Conversation Pennsylvania`), colour = "green")

graph_alcoholism = graph8 + ylab("Percent Growth Over Base Year") + ggtitle("Growth in Alcoholism Conversation")
graph_alcoholism
ggsave("Alcoholism.png")

graph9 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Overdose Conversation Delaware`), colour = "blue") + 
  geom_point(aes(y = `Growth in Overdose Deaths Delaware`), colour = "red")

graph_Overdose_DE = graph9 + ylab("Percent Growth Over Base Year") + ggtitle("Overdose Deaths v Conversation: Delaware")
graph_Overdose_DE
ggsave("OD_DE.png")

graph10 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Overdose Conversation Wisconsin`), colour = "blue") + 
  geom_point(aes(y = `Growth in Overdose Deaths Wisconsin`), colour = "red")

graph_Overdose_WI = graph10 + ylab("Percent Growth Over Base Year") + ggtitle("Overdose Deaths v Conversation: Wisconsin")
graph_Overdose_WI
ggsave("OD_WI.png")

graph11 = ggplot(data=final_data2, aes(x= `Period of Annual Growth`)) + 
  geom_point(aes(y = `Growth in Overdose Conversation Pennsylvania`), colour = "blue") + 
  geom_point(aes(y = `Growth in Overdose Deaths Pennsylvania`), colour = "red")

graph_Overdose_PA = graph11 + ylab("Percent Growth Over Base Year") + ggtitle("Overdose Deaths v Conversation: Pennsylvania")
graph_Overdose_PA
ggsave("OD_PA.png")

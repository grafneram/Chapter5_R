data <- read.csv ("C:/Users/Crash/Downloads/Ice Cream Sales - temperatures.csv")
View(data)
head(data)


plot(data$Temperature, data$IceCreamSales, 
     xlab = "Temperature", ylab = "Ice Cream Sales",
     main = "Relationship between Temperature and Ice Cream Sales")


correlation <- cor(data$Temperature, data$Ice.Cream.Profits, use = "complete.obs")
print(correlation) #0.9884457 means we almost have a perfect positive correlation (very positive correlation)


spearman <- cor(data$Temperature, data$Ice.Cream.Profits, method = "spearman")
print(spearman)

# Using the spearman method, we do NOT get 1, therefore not ALWAYS true

#If dataset was missing any data:
#A first way is using "complete.obs" (ignore whole row)
#A second way is"using pairwise.complete.obs"(does NOT drop whole row)




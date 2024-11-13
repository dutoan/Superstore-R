# Loading a csv gile from GitHub ----
url <- "https://raw.githubusercontent.com/dutoan/Superstore-R/refs/heads/master/Superstore.csv"

Superstore <- read.csv(url)

#Install ggplot ----
install.packages("ISLR")
install.packages("ggplot2")
install.packages("group_by")

#Profit Distribution by Sub Category ----
  library(ggplot2)
  library(ISLR)
  data(Superstore)
  ggplot(data = Superstore) + 
    geom_boxplot(mapping = aes(x = Sub.Category, y = Profit, fill = Sub.Category)) + 
    theme(axis.text.x  = element_text(angle = 70))
#Profit vs. Sales by Shipping Mode ----
  library(ggplot2)
  library(ISLR)
  data(Superstore)
  ggplot(data = Superstore, aes(x = Sales, y = Profit, color = Ship.Mode)) + geom_point()
#Profit vs. Sales by Category ----
  library(ggplot2)
  library(ISLR)
  data(Superstore)
  ggplot(Superstore, aes(x = Profit, y = Sales, color = Category)) +
    geom_point() +
    geom_smooth(method = "lm", se = TRUE) +
    facet_wrap(~ Category) +
    coord_cartesian(xlim = c(0, 100), ylim = c(0, 2000)) +
    theme_minimal()  
      
  
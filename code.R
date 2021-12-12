#install.packages('reticulate')
library(reticulate)
library(lubridate)
use_python("C:\\Users\\shahz\\AppData\\Local\\Programs\\Python\\Python39\\python.exe")

sns <- import('seaborn')
pd <- import('pandas')
plt <- import('matplotlib.pyplot')


data <- read.csv("uber.csv")
data$Date.Time <- as.Date(data$Date.Time, format = "%m/%d/%Y %H:%M:%S")
data$Day <- format(data$Date, format="%d")
data$weekday <- as.numeric(format(data$Date.Time, format = "%w"))
data$Hour <- format(data$Date, format="%H")


sns$distplot(data["Day"])
plt$show()

sns$distplot(data["weekday"])
plt$show()
plt$ylim(0, 1)
sns$distplot(data["Hour"])
plt$show()


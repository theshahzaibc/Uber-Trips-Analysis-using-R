# Uber-Trips-Analysis-using-R
Uber Trips Analysis using R

## Loading libraries

```{r message=FALSE, warning=FALSE}
library(reticulate)
library(lubridate)
```

## Importing python modules
Used python to plot different density plots.

```{r message=FALSE, warning=FALSE}
use_python("C:\\Users\\shahz\\AppData\\Local\\Programs\\Python\\Python39\\python.exe")

sns <- import('seaborn')
pd <- import('pandas')
plt <- import('matplotlib.pyplot')

```

## Loading data

```{r message=FALSE, warning=FALSE}

data <- read.csv("uber.csv")
data$Date.Time <- as.Date(data$Date.Time, format = "%m/%d/%Y %H:%M:%S")
data$Day <- format(data$Date, format="%d")
data$weekday <- as.numeric(format(data$Date.Time, format = "%w"))
data$Hour <- format(data$Date, format="%H")

```
![image](https://i.imgur.com/YCo6ggU.jpg)

## Day density

```{r message=FALSE, warning=FALSE}
sns$distplot(data["Day"])
plt$show()
```
![image](https://i.imgur.com/nbW3pHx.png)

##Week Day Density
```{r message=FALSE, warning=FALSE}
sns$distplot(data["weekday"])
plt$show()
```
![image](https://i.imgur.com/exnAmTG.png)

## Hour density

```{r message=FALSE, warning=FALSE}
plt$ylim(0, 1)
sns$distplot(data["Hour"])
plt$show()
```

![image](https://i.imgur.com/8UVIKZ7.png)

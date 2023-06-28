#1 
# Read in data
gh_data <- read.csv("TheGreenHouse.csv")

#2
# View data
head(gh_data)

#3
# Calculate the mean temperature
gh_mean_temp <- mean(gh_data$Temperature)

#4
# View the mean temperature
print(gh_mean_temp)

#5
# Calculate the median temperature
gh_median_temp <- median(gh_data$Temperature)

#6
# View the median temperature
print(gh_median_temp)

#7
# Calculate the standard deviation of the temperature
gh_std_dev_temp <- sd(gh_data$Temperature)

#8
# View the standard deviation
print(gh_std_dev_temp)

#9
# Create a histogram of the temperature
hist(gh_data$Temperature)

#10
# Create a boxplot of the temperature
boxplot(gh_data$Temperature)

#11
# Calculate the mean relative humidity
gh_mean_rh <- mean(gh_data$Relative.Humidity)

#12
# View the mean relative humidity
print(gh_mean_rh)

#13
# Calculate the median relative humidity
gh_median_rh <- median(gh_data$Relative.Humidity)

#14
# View the median relative humidity
print(gh_median_rh)

#15
# Calculate the standard deviation of the relative humidity
gh_std_dev_rh <- sd(gh_data$Relative.Humidity)

#16
# View the standard deviation
print(gh_std_dev_rh)

#17
# Create a histogram of the relative humidity
hist(gh_data$Relative.Humidity)

#18
# Create a boxplot of the relative humidity
boxplot(gh_data$Relative.Humidity)

#19
# Calculate the mean CO2
gh_mean_co2 <- mean(gh_data$CO2)

#20
# View the mean CO2
print(gh_mean_co2)

#21
# Calculate the median CO2
gh_median_co2 <- median(gh_data$CO2)

#22
# View the median CO2
print(gh_median_co2)

#23
# Calculate the standard deviation of the CO2
gh_std_dev_co2 <- sd(gh_data$CO2)

#24
# View the standard deviation
print(gh_std_dev_co2)

#25
# Create a histogram of the CO2
hist(gh_data$CO2)

#26
# Create a boxplot of the CO2
boxplot(gh_data$CO2)

#27
# Create a scatterplot of temperature vs. relative humidity
plot(gh_data$Temperature, gh_data$Relative.Humidity)

#28
# Calculate the correlation coefficient between temperature and relative humidity
gh_corr_temp_rh <- cor(gh_data$Temperature, gh_data$Relative.Humidity)

#29 
# View the correlation coefficient
print(gh_corr_temp_rh)

#30
# Create a scatterplot of temperature vs. CO2
plot(gh_data$Temperature, gh_data$CO2)

#31
# Calculate the correlation coefficient between temperature and CO2
gh_corr_temp_co2 <- cor(gh_data$Temperature, gh_data$CO2)

#32
# View the correlation coefficient
print(gh_corr_temp_co2)

#33
# Create a scatterplot of relative humidity vs. CO2
plot(gh_data$Relative.Humidity, gh_data$CO2)

#34
# Calculate the correlation coefficient between relative humidity and CO2
gh_corr_rh_co2 <- cor(gh_data$Relative.Humidity, gh_data$CO2)

#35
# View the correlation coefficient
print(gh_corr_rh_co2)

#36
# Create a vector of the day of the week
gh_day_of_week <- gh_data$Day

#37
# Create a vector of the temperature
gh_temperature <- gh_data$Temperature

#38
# Create a dataframe with the day of the week and temperature
gh_day_temperature <- data.frame(gh_day_of_week, gh_temperature)

#39
# View the dataframe
head(gh_day_temperature)

#40
# Calculate the mean temperature for each day of the week
gh_mean_day_temp <- aggregate(gh_temperature ~ gh_day_of_week, data = gh_day_temperature, mean)

#41
# View the mean temperature for each day of the week
head(gh_mean_day_temp)

#42
# Barplot of the mean temperature for each day of the week
barplot(gh_mean_day_temp$gh_temperature ~ gh_mean_day_temp$gh_day_of_week)

#43
# Create a matrix of the temperature and relative humidity
gh_temp_humidity <- matrix(c(gh_data$Temperature, gh_data$Relative.Humidity), nrow = nrow(gh_data))

#44
# View the matrix
head(gh_temp_humidity)

#45
# Create a dendrogram of the temperature and relative humidity
hc <- hclust(dist(gh_temp_humidity))
plot(hc)

#46
# Create a vector of the time
gh_time <- gh_data$Time

#47
# Create a vector of the CO2
gh_co2 <- gh_data$CO2

#48
# Create a dataframe with the time and CO2
gh_time_co2 <- data.frame(gh_time, gh_co2)

#49
# View the dataframe
head(gh_time_co2)

#50
# Calculate the mean CO2 for each hour
gh_mean_time_co2 <- aggregate(gh_co2 ~ gh_time, data = gh_time_co2, mean)

#51
# View the mean CO2 for each hour
head(gh_mean_time_co2)

#52
# Barplot of the mean CO2 for each hour
barplot(gh_mean_time_co2$gh_co2 ~ gh_mean_time_co2$gh_time)

#53
# Create a vector of the temperature
gh_mean_temperature <- gh_data$Mean.Temperature

#54
# Create a vector of the CO2
gh_mean_co2 <- gh_data$Mean.CO2

#55
# Create a dataframe with the temperature and CO2
gh_temp_co2 <- data.frame(gh_mean_temperature, gh_mean_co2)

#56
# View the dataframe
head(gh_temp_co2)

#57
# Fit a linear regression model
gh_model <- lm(gh_mean_co2 ~ gh_mean_temperature, data = gh_temp_co2)

#58
# View the model coefficients
coef(gh_model)

#59
# Create a scatterplot of the fitted model
data <- gh_temp_co2
x <- data$gh_mean_temperature
y <- data$gh_mean_co2
plot(x,y)
abline(gh_model, col="red")

#60
# Residual diagnostics
residuals <- gh_model$residuals

#61
# Calculate the Shapiro-Wilks test statistic
shapiro.test(residuals)

#62
# Calculate the Jarque-Bera test statistic
library(moments)
jarque.bera.test(residuals)

#63
# Calculate the Durbin-Watson statistic
durbinWatsonTest(gh_model)

#64
# Calculate the Cook's distance
library(car)
cooks.distance(gh_model)

#65
# Create a vector of the temperature
gh_max_temperature <- gh_data$Max.Temperature

#66
# Create a vector of the CO2
gh_max_co2 <- gh_data$Max.CO2

#67
# Create a dataframe with the temperature and CO2
gh_max_temp_co2 <- data.frame(gh_max_temperature, gh_max_co2)

#68
# View the dataframe
head(gh_max_temp_co2)

#69
# Fit a linear regression model
gh_max_model <- lm(gh_max_co2 ~ gh_max_temperature, data = gh_max_temp_co2)

#70
# View the model coefficients
coef(gh_max_model)

#71
# Create a scatterplot of the fitted model
data <- gh_max_temp_co2
x <- data$gh_max_temperature
y <- data$gh_max_co2
plot(x,y)
abline(gh_max_model, col="red")

#72
# Residual diagnostics
residuals <- gh_max_model$residuals

#73
# Calculate the Shapiro-Wilks test statistic
shapiro.test(residuals)

#74
# Calculate the Jarque-Bera test statistic
jarque.bera.test(residuals)

#75
# Calculate the Durbin-Watson statistic
durbinWatsonTest(gh_max_model)

#76
# Calculate the Cook's distance
cooks.distance(gh_max_model)

#77
# Create a vector of the temperature
gh_min_temperature <- gh_data$Min.Temperature

#78
# Create a vector of the CO2
gh_min_co2 <- gh_data$Min.CO2

#79
# Create a dataframe with the temperature and CO2
gh_min_temp_co2 <- data.frame(gh_min_temperature, gh_min_co2)

#80
# View the dataframe
head(gh_min_temp_co2)

#81
# Fit a linear regression model
gh_min_model <- lm(gh_min_co2 ~ gh_min_temperature, data = gh_min_temp_co2)

#82
# View the model coefficients
coef(gh_min_model)

#83
# Create a scatterplot of the fitted model
data <- gh_min_temp_co2
x <- data$gh_min_temperature
y <- data$gh_min_co2
plot(x,y)
abline(gh_min_model, col="red")

#84
# Residual diagnostics
residuals <- gh_min_model$residuals

#85
# Calculate the Shapiro-Wilks test statistic
shapiro.test(residuals)

#86
# Calculate the Jarque-Bera test statistic
jarque.bera.test(residuals)

#87
# Calculate the Durbin-Watson statistic
durbinWatsonTest(gh_min_model)

#88
# Calculate the Cook's distance
cooks.distance(gh_min_model)

#89
# Create a vector of the relative humidity
gh_mean_rh <- gh_data$Mean.Relative.Humidity

#90
# Create a vector of the CO2
gh_mean_co2 <- gh_data$Mean.CO2

#91
# Create a dataframe with the relative humidity and CO2
gh_rh_co2 <- data.frame(gh_mean_rh, gh_mean_co2)

#92
# View the dataframe
head(gh_rh_co2)

#93
# Fit a linear regression model
gh_rh_model <- lm(gh_mean_co2 ~ gh_mean_rh, data = gh_rh_co2)

#94
# View the model coefficients
coef(gh_rh_model)

#95
# Create a scatterplot of the fitted model
data <- gh_rh_co2
x <- data$gh_mean_rh
y <- data$gh_mean_co2
plot(x,y)
abline(gh_rh_model, col="red")

#96
# Residual diagnostics
residuals <- gh_rh_model$residuals

#97
# Calculate the Shapiro-Wilks test statistic
shapiro.test(residuals)

#98
# Calculate the Jarque-Bera test statistic
jarque.bera.test(residuals)

#99
# Calculate the Durbin-Watson statistic
durbinWatsonTest(gh_rh_model)

#100
# Calculate the Cook's distance
cooks.distance(gh_rh_model)

#101
# Create a vector of the relative humidity
gh_max_rh <- gh_data$Max.Relative.Humidity

#102
# Create a vector of the CO2
gh_max_co2 <- gh_data$Max.CO2

#103
# Create a dataframe with the relative humidity and CO2
gh_max_rh_co2 <- data.frame(gh_max_rh, gh_max_co2)

#104
# View the dataframe
head(gh_max_rh_co2)

#105
# Fit a linear regression model
gh_max_rh_model <- lm(gh_max_co2 ~ gh_max_rh, data = gh_max_rh_co2)

#106
# View the model coefficients
coef(gh_max_rh_model)

#107
# Create a scatterplot of the fitted model
data <- gh_max_rh_co2
x <- data$gh_max_rh
y <- data$gh_max_co2
plot(x,y)
abline(gh_max_rh_model, col="red")

#108
# Residual diagnostics
residuals <- gh_max_rh_model$residuals

#109
# Calculate the Shapiro-Wilks test statistic
shapiro.test(residuals)

#110
# Calculate the Jarque-Bera test statistic
jarque.bera.test(residuals)

#111
# Calculate the Durbin-Watson statistic
durbinWatsonTest(gh_max_rh_model)

#112
# Calculate the Cook's distance
cook
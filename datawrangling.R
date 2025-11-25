heart_rates <- read.csv("c:/Users/HP/Downloads/heart_rates.csv")
heart_rates$time <- as.POSIXct(heart_rates$time)
str(heart_rates)
head(heart_rates)
summary(heart_rates)
plot(heart_rates)

trim <- function(x, min_hr, max_hr) {
  within(heart_rates, {
    heart_rate[heart_rate < min_hr] <- NA
    heart_rate[heart_rate > max_hr] <- NA
  })
}

hr <- trim(heart_rates, min_hr = 70, max_hr = 200)
plot(hr)

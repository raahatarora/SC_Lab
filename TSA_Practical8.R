# Load dataset
data("AirPassengers")

# View structure
class(AirPassengers)
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)

# Assign to object
ap_ts <- AirPassengers

plot(ap_ts,
     main = "AirPassengers Data (1949–1960)",
     ylab = "Number of Passengers",
     xlab = "Year",
     col = "blue")

decomp <- decompose(ap_ts, type = "multiplicative")
plot(decomp)

par(mfrow = c(1,2))

acf(ap_ts, main = "ACF of Original Series")
pacf(ap_ts, main = "PACF of Original Series")

install.packages("tseries")
library(tseries)

kpss.test(ap_ts)


# Log transform
ap_log <- log(ap_ts)

# First difference (trend removal)
ap_diff1 <- diff(ap_log, differences = 1)

# Seasonal difference (period = 12)
ap_diff12 <- diff(ap_diff1, lag = 12)

# Plot stationary series
plot(ap_diff12, main = "Stationary Series")

# Check ACF/PACF
par(mfrow = c(1,2))
acf(ap_diff12, main = "ACF of Stationary Series")
pacf(ap_diff12, main = "PACF of Stationary Series")

# KPSS test again
kpss.test(ap_diff12)


install.packages("forecast")
library(forecast)

auto_model <- auto.arima(ap_ts, seasonal = TRUE)
summary(auto_model)


final_model <- auto.arima(ap_ts, seasonal = TRUE)

summary(final_model)


checkresiduals(final_model)




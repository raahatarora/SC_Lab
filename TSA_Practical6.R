# Load the dataset
data("AirPassengers")

# Assign to a variable
ap_ts <- AirPassengers

# Check structure
class(ap_ts)
start(ap_ts)
frequency(ap_ts)

plot(ap_ts,
     main = "Monthly International Air Passengers",
     xlab = "Year",
     ylab = "Number of Passengers",
     col = "blue")



# Decompose the time series
ap_decomp <- decompose(ap_ts, type = "multiplicative")

# Plot decomposition
plot(ap_decomp)


# ACF plot
acf(ap_ts,
    main = "ACF of AirPassengers")

# PACF plot
pacf(ap_ts,
     main = "PACF of AirPassengers")


# Install package if needed
install.packages("tseries")

# Load package
library(tseries)

# Perform ADF test
adf.test(ap_ts)


# First difference
ap_diff <- diff(ap_ts)

# Plot differenced series
plot(ap_diff,
     main = "Differenced AirPassengers Series")

# ACF and PACF of differenced series
acf(ap_diff)
pacf(ap_diff)

# ADF test on differenced data
adf.test(ap_diff)
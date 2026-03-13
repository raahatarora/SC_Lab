# Install required packages (run once if not installed)
install.packages("forecast")
install.packages("tseries")

# Load libraries
library(forecast)
library(tseries)

# Read the data from text file
data <- scan("D:/TSA sam 230957036/bank_case.txt")

# Convert to time series (monthly frequency = 12)
# Change start year/month if known, example start = Jan 2000
bank_ts <- ts(data, frequency = 12)

# Plot the time series
plot(bank_ts, main="Commercial Bank Real Estate Loans",
     ylab="Billions of Dollars", xlab="Time")

# Check stationarity (optional)
adf.test(bank_ts)

# Fit automatic ARIMA model
model <- auto.arima(bank_ts)

# Display model summary
summary(model)

# Forecast next 20 months
forecast_values <- forecast(model, h = 20)

# Print forecast values
print(forecast_values)

# Plot forecast
plot(forecast_values, main="20-Month Forecast of Commercial Loans")
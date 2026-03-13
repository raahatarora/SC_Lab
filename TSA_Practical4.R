

library(readxl)

# (a) Import the Excel dataset
data <- read_excel("D:/230957148 shivaani/us_pop.xlsx")

# Convert to time series (annual data)
pop_ts <- ts(data$Population, start = min(data$Year), frequency = 1)
print(pop_ts)

# (b) Identify the dominating component(s)
plot(pop_ts, col = "blue", lwd = 2,
     main = "US Population Time Series",
     xlab = "Year", ylab = "Population (millions)")
lines(lowess(pop_ts), col = "red", lwd = 2)
# Dominant component: Trend (steady increase over time)

# (c) Apply a square root transformation
pop_sqrt <- sqrt(pop_ts)
plot(pop_sqrt, col = "darkgreen", lwd = 2,
     main = "Square Root Transformed Population Data",
     xlab = "Year", ylab = "Population")

# (d) Estimate the linear trend
t <- time(pop_ts)
trend_model <- lm(pop_ts ~ t)

# Print only the p-value for slope coefficient (Pr)
Pr <- summary(trend_model)$coefficients[2,4]
Pr

# (e) Remove the estimated linear trend (detrending)
trend_component <- trend_model$fitted.values
residuals_ts <- pop_ts - trend_component

# Plot detrended series
plot(residuals_ts, col = "purple", lwd = 2,
     main = "Detrended US Population Series",
     xlab = "Year", ylab = "Residuals (Trend Removed)")
abline(h = 0, col = "gray")


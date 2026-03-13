# Create the dataset
year <- 1970:1990
population <- c(3929214, 5308483, 7239881, 9638453, 12860702, 17063353,
                23191876, 31443321, 38558371, 50189209, 62979666, 76212168,
                92228496, 106021537, 123202624, 132164569, 151325798,
                179323175, 203302031, 226542203, 248709873)
# Convert population data to time series object
pop_ts <- ts(population, start = 1970, frequency = 1)

# Display the time series
pop_ts
# Plot the time series
plot(pop_ts, 
     main = "US Population Time Series",
     ylab = "Population",
     xlab = "Year")
# Square root transformation
pop_sqrt <- sqrt(pop_ts)

# Plot transformed data
plot(pop_sqrt,
     main = "Square Root Transformed Population",
     ylab = "Square Root of Population",
     xlab = "Year")
# Time index
time_index <- time(pop_ts)

# Fit linear trend model
trend_model <- lm(pop_ts ~ time_index)

# Summary of the model
summary(trend_model)
# Extract fitted trend values
trend_estimated <- fitted(trend_model)

# Detrended series
detrended_pop <- pop_ts - trend_estimated

# Plot detrended data
plot(detrended_pop,
     main = "Detrended US Population Time Series",
     ylab = "Detrended Population",
     xlab = "Year")

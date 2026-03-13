
library(datasets)
data("nottem")

# Display first few observations
head(nottem)

# Decompose the time series
nottem_decomp <- decompose(nottem)

# Plot decomposition
plot(nottem_decomp, col = "pink", lwd = 2)

# Display components
nottem_decomp$trend
nottem_decomp$seasonal
nottem_decomp$random

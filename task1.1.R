# Typical task 1.1
v <- c(2, 3, 3, 1, 4, 2, 3, 3, 1, 5, 2, 4, 3, 2, 2, 1, 2, 3, 4, 5, 2, 2, 1, 3, 4, 3, 3, 3, 6, 6, 3, 3, 6, 1, 3, 4, 3, 4, 4, 5, 3, 3, 2, 2, 1, 3, 2, 5, 5, 2, 4, 3, 6, 1, 2, 2, 3, 1, 3, 4)
v
sort(v)

# Dotted variation row
table(v)

# Empirical Cumulative Distribution Function (notice how it's built!!!)
ecdf(v)
plot(ecdf(v))

# Empirical Cumulative Distribution Function in the defined point
ecdf(v)(2.5)

# Statistic selective parameters
mean(v)    # Selective mean
var(v)     # Variance (no shift)
sd(v)      # Standard deviation (no shift)
median(v)  # Median

# Selective quantiles
quantile(v, 0.25)
quantile(v, 0.5)
quantile(v, 0.75)

# StatParams all in one
summary(v)

# Boxplot
boxplot(v, horizontal = TRUE)

# Additional package
install.packages("e1071")
install.packages("car")
library(e1071)
library(car)

# Symmetry Coefficient
skewness(v)

# Excess coefficient
kurtosis(v)

# qqPlot (Normal distribution compared with ours)
qqPlot(v)

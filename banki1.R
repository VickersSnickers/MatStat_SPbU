head(banki)

r = banki$EffRate
r
sort(r)

# Interval variation row
table(cut(r, breaks = 5))

# Histogram
hist(r, breaks = 5)      # Non-relative    
hist(r, freq = FALSE)    # Relative

# Empirical Cumulative Distribution Function
plot(ecdf(r))

# Statistic selective parameters
summary(r)
var(r)                   # Variance (no shift)
sd(r)                    # Standard deviation (no shift)

# Boxplot
boxplot(r, horizontal = TRUE)

# Interquartile range (Tukey method)
U <- 4.5 + 1.5 * IQR(r)
U
L <- 3.7 - 1.5 * IQR(r)
L

t <- subset(r, r >= U | r <= L)
t                       # Outlier found

# Z-score method
z <- abs((r - mean(r))/ sd(r))
z                       # No value >= 3, no outliers found
s <- subset(z, z >= 3)
s

# Different methods for finding outliers may show different results!!!

# Symmetry Coefficient
skewness(r)

# Excess coefficient
kurtosis(r)

# qqPlot (Normal distribution compared with ours)
qqPlot(r)

# Hypothesis test about expected value with known dispersion
# Hypothesis H_0: mn = 70
# Hypothesis H_1: mn != 70
# Hypothesis H_2: mn > 70

# Statistics has normal standard distribution
sigma <- 3.5
n <- 49
x <- 69.1                       # selective mean
alpha <- 0.05
mn <- 70                        # expected mean

(x - mn) * sqrt(n) / sigma     # statistics value

# Quantile of normal standard distribution with level 1 - alpha/2
qnorm(1 - alpha/2, 0, 1)
# Quantiles are -1.96 and 1.96. Statistics value is in [-1.96, 1.96]. It's an acceptance region. So we apply H_0

alpha <- 0.05
qnorm(1 - alpha, 0, 1)
# Quantiles are -1.64 and 1.64. Statistics value is in [1.64, infinity). It's an rejection region. So we apply H_2
r <- banki$EffRate
n <- 25
# Hypothesis H_0: mn = 4.5
mn <- 4.5
alpha = 0.05
x <- mean(r)                           # selective mean
sigma <- sd(r)                         # sigma
z.test(r, mu = mn, conf.level = 0.95, sigma.x = sigma, alternative = "two.sided")
# P-value < alpha, so we are in the rejection region, so we reject H_0
(x - mn) * sqrt(n) / sigma


# Hypothesis test about expected value with unknown dispersion

# Hypothesis H_0: mn = 4.4
# Hypothesis H_1: mn != 4.5
# Student distribution with n-1 degrees of freedom

mn = 4.4
(x - mn) * sqrt(n) / sigma
qt(1 - alpha/2, n -1)
# Statistics value (st) not in [-2.06, 2.06]. We are in rejection region. So we reject H_0


t.test(r, conf.level = 1 - alpha, mu = mn, alternative = "t")


# Hypothesis test about dispersion
# Hypothesis H_0: sigma = 0.6
# Hypothesis H_1: sigma != 0.6
# Chi^2 distribution with n-1 degrees of freedom
sigma <- 0.6
(n - 1) * var(r) / sigma^2

qchisg(alpha/2, n - 1)
qchisg(1 - alpha/2, n - 1)

varTest(r, sigma.squared = sigma^2, conf.level = 1 - alpha, alternative = "t")
# Accept H_0
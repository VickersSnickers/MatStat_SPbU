r = banki$EffRate

mn <- mean(r)
mn

s <- sd(r)
s

# Let's put constant values as:
sigma <- 0.8
alpha <- 0.99
eps <- 1 - alpha

# Confidence interval for expected value with known dispersion

# Quantile of normal distribution
qn <- qnorm(1 - eps/2, 0, 1)

# right boundary
rg <- mn + qn * sigma / sqrt(25)
rg
# left boundary
lt <- mn - qn * sigma / sqrt(25)
lt

install.packages("BSDA")
z.test(r, sigma.x = sigma, conf.level = 0.99)$conf.int


# Confidence interval for expected value with unknown dispersion

# Quantile for Student distribution
qt <- qt(1 - eps/2, 25 - 1)

# right boundary
rg <- mn + qt * s / sqrt(25)
rg
# left boundary
lt <- mn - qt * s / sqrt(25)
lt

t.test(r, conf.level = 0.99)$conf.int


# Confidence interval for dispersion with unknown expected value

# Quantile for chi^2
qc1 <- qchisq(eps/2, 25-1)
qc1

qc2 <- qchisq(1 - eps/2, 25-1)
qc2

install.packages("EnvStats")

# right boundary
rg <- 25 * s^2 / qc1
rg
# left boundary
lt <- 25 * s^2 / qc2
lt

# Asymptotic confidence interval for binomial dispersion

b1 <- subset(banki, r >= mn)

binom.test(14, 25, conf.level = 0.95)$conf.int

# Assume that we have 27% females on ACMP
binom.test(2, 8, conf.level = 0.95)$conf.int

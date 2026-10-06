# Hypothesis test
install.packages("EnvStats")
var(jetfuel$June)
varTest(jetfuel$June, sigma.squared = 145000000, conf.level = 0.95, alternative = "t")
varTest(jetfuel$June, sigma.squared = 145000000, conf.level = 0.95, alternative = "l")
varTest(jetfuel$June, sigma.squared = 145000000, conf.level = 0.95, alternative = "g")

# Hypothesis test about Expected value equality in two samples
t.test(jetfuel$June, jetfuel$July, mu = 0, paired = TRUE, var.equal = TRUE)

# Hypothesis test about Dispersion equality for two samples
var.test(jetfuel$June, jetfuel$July, ratio=1)

# Hypothesis test about parameter shares equality for two samples

# We are to find a share of airports where the price is lower, than mean
June <- subset(jetfuel, jetfuel$June <= mean(jetfuel$June))
July <- subset(jetfuel, jetfuel$July <= mean(jetfuel$July))

prop.test(c(86, 94), c(161, 161))

# Hypothesis test about distribution law
# Pearson Criterion (only for Normal distribution)
install.packages("nortest")
pearson.test(jetfuel$June)
# P-value is less than 0.05, so we are in the rejection region. We deny hypothesis.

# Kolmogorov Criterion
ks.test(jetfuel$June, "pnorm", alternative = "g")
# Lilliefors
lillie.test(jetfuel$June)
# Shapiro-Wilk
shapiro.test(jetfuel$June)
# Cramer-von Mises
cvm.test(jetfuel$June)
# Anderson-Darling
ad.test(jetfuel$June)

# Non-parametric criterions (Non-Normal distribution)
# Wilcoxon Criterion (one-sample)
wilcox.test(jetfuel$June, mu = median(jetfuel$June))
# Wilcoxon Criterion (two-sample)
wilcox.test(jetfuel$June, jetfuel$July, mu = 0, paired = TRUE)

# Criterions for multiple samples
# Kruskal-Wallis
kruskal.test(jetfuel$June~jetfuel$FedDistrict)
# P value is almost zero, so we deny hypothesis that we have similiar medians within districts.
install.packages("agricolae")
# Mood Criterion
Median.test(jetfuel$June, jetfuel$FedDistrict)

CCN <- subset(jetfuel, jetfuel$FedDistrict =="Caucasus" | jetfuel$FedDistrict == "Central" | jetfuel$FedDistrict == "NW")
Median.test(CCN$June, CCN$FedDistrict)

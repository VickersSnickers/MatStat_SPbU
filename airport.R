schDep = airportdat$V3
perfDep = airportdat$V4
enpPas = airportdat$V5
freight = airportdat$V6
mail = airportdat$V7


# Scheduled Departures

# Statistic selective parameters
summary(schDep)
var(schDep)                   # Variance (no shift)
sd(schDep)                    # Standard deviation (no shift)

hist(schDep)

# Boxplot
boxplot(schDep, horizontal = TRUE)


# Performed Departures

# Statistic selective parameters
summary(perfDep)
var(perfDep)                   # Variance (no shift)
sd(perfDep)                    # Standard deviation (no shift)

hist(perfDep)

# Boxplot
boxplot(perfDep, horizontal = TRUE)


# Enplaned passengers

# Statistic selective parameters
summary(enpPas)
var(enpPas)                   # Variance (no shift)
sd(enpPas)                    # Standard deviation (no shift)

hist(enpPas)

# Boxplot
boxplot(enpPas, horizontal = TRUE)


# Freight

# Statistic selective parameters
summary(freight)
var(freight)                   # Variance (no shift)
sd(freight)                    # Standard deviation (no shift)

hist(freight)

# Boxplot
boxplot(freight, horizontal = TRUE)


# Mail

# Statistic selective parameters
summary(mail)
var(mail)                   # Variance (no shift)
sd(mail)                    # Standard deviation (no shift)

hist(mail)

# Boxplot
boxplot(mail, horizontal = TRUE)

df <- data.frame(schDep, perfDep, enpPas, freight, mail)
pairs(df)

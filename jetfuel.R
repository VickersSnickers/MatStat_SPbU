# Let's choose Central Federal District
table(jetfuel$FedDistrict)
central <- subset(jetfuel, jetfuel$FedDistrict == "Central")

hist(central$May)
mean(central$May)
sd(central$May)

t.test(central$May)$conf.int
varTest(central$May)$conf.int
sqrt(varTest(central$May)$conf.int)

nrow(subset(central, central$May >= mean(central$May)))
binom.test(10, 19)$conf.int

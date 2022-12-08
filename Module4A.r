# Question 1
library(help = "datasets")

# Question 2
?ChickWeight

# Question 3
head(ChickWeight)

# Question 4
plot(ChickWeight$Diet,
     col = "#408140f7", 
     lwd = 5, 
     main = "ChickWeight:Diets",
     xlab = "Diet Chicks Received",
     ylab = "Number Chicks")

# Question 5
plot(ChickWeight$Diet,
    ChickWeight$weight,
    col = "blue", 
    main = "ChickWeight:Diet vs. ChickWeight Body Weight",
    xlab = "Diet Chicks Received",
    ylab = "Chick Body Weight (gm)")

# Question 6
par(mfrow = c(3,1))

# Question 7
plot(ChickWeight$weight[ChickWeight$Chick == 1],
    xlim = c(0,12),
    ylim = c(0,200),
    main = "ChickWeight:Chick 1",
    xlab = "Number Days",
    ylab = "Chick Body Weight(gm)",
    col = "red"
    )
plot(ChickWeight$weight[ChickWeight$Chick == 2],
    xlim = c(0,12),
    ylim = c(0,200),
    main = "ChickWeight:Chick 2",
    xlab = "Number Days",
    ylab = "Chick Body Weight(gm)",
    col = "blue"
    )
plot(ChickWeight$weight[ChickWeight$Chick == 3],
    xlim = c(0,12),
    ylim = c(0,200),
    main = "ChickWeight:Chick 3",
    xlab = "Number Days",
    ylab = "Chick Body Weight(gm)",
    col = "#408140f7"
    )
# Question 8
par(mfrow = c(1,1))

# Question 9
diet <- table(ChickWeight$Diet)

# Question 10
barplot(diet,
        col = "#408140f7", 
        main = "ChickWeight: Diets", 
        xlab = "Diet Chick Received", 
        ylab = "Number Chicks" 
        )


# Question 11
rm(list = ls())

# Question 12
summary(ChickWeight$weight[ChickWeight$Diet == 1])

# Question 13
require(pacman)
p_load(psych)

# Question 14
describe(ChickWeight$weight[ChickWeight$Diet == 1])

# Question 15
p_unload(psych)
detach(package:pacman)

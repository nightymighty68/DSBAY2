# Using car package
install.packages("car")
library(car)
Anova(model, type = "II")  # Type II ANOVA

# Using broom package
install.packages("broom")
library(broom)
tidy(anova(model))

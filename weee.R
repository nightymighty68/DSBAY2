earnings_ali <- c(50,60,55,74,80)
earnings_jameela <-c(53,57,79,88,93)

weekdays<- c("Sunday","Monday","Tuesday","Wednesday","Thursday")

merchant_names<- c("ali","jameela")

earnings_matrix <- matrix(c(earnings_ali,earnings_jameela), byrow = TRUE, nrow = 2)

rownames(earnings_matrix) <- merchant_names

colnames(earnings_matrix)<- weekdays

weekend <- c("Friday","Saturday")

earnings_weekend <- matrix(c(110,120,120,130),byrow = TRUE, ncol = 2)
rownames(earnings_weekend)<- merchant_names
colnames(earnings_weekend)<- weekend

earnings_allweek <- cbind(earnings_matrix,earnings_weekend)

totalearnings<- rowSums(earnings_allweek)
totalearnings

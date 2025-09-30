earnings_ali <- c(50,60,55,74,80)
earnings_jameela <-c(53,57,79,88,93)

weekdays<- c("Sunday","Monday","Tuesday","Wednesday","Thursday")

merchant_names<- c("ali","jameela")

earnings_matrix <- matrix(c(earnings_ali,earnings_jameela), byrow = TRUE, nrow = 2)

rownames <- merchant_names

colnames<- weekdays

earnings_matrix

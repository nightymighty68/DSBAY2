my_vector <- 1:10

my_matrix<- matrix(c(4,6,7,1),nrow = 2)

my_data_frame<- mtcars[1:8,]

my_list<- list(my_vector,my_matrix,my_data_frame)

listnames <- c("Vectors","Matrix","Data_frame")

names(my_list)<- listnames


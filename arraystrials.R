my_array <-array(1:12,dim=c(2,3,2))

John_Term1 <- c(74, 72, 71, 79, 90)
John_Term2 <- c(78, 80, 80, 88, 82)
John_Term3 <- c(85, 90, 72, 77, 86)
Jane_Term1 <- c(63, 43, 62, 85, 65)
Jane_Term2 <- c(60, 27, 74, 63, 57)
Jane_Term3 <- c(55, 72, 64, 47, 75)
Tim_Term1 <- c(81, 83, 90, 84, 94)
Tim_Term2 <- c(99, 77, 99, 87, 91)
Tim_Term3 <- c(80, 94, 95, 87, 80)

marks_array <- array(c(John_Term1,John_Term2,John_Term3,Jane_Term1,Jane_Term2,Jane_Term3,Tim_Term1,Tim_Term2,Tim_Term3),dim= c(5,3,3))

matrix_names <- c("John", "Jane", "Tim")
row_names  <- c("Test 1", "Test 2", "Test 3", "Test 4", "Test 5") 
column_names  <- c("Term 1", "Term 2", "Term 3")

marks_array <- array(c(John_Term1,John_Term2,John_Term3,Jane_Term1,Jane_Term2,Jane_Term3,Tim_Term1,Tim_Term2,Tim_Term3),dim= c(5,3,3),dimnames = list(row_names,column_names,matrix_names))

sum (marks_array)
# Find total marks for all students per term
apply(marks_combined_upgraded, c(2), sum)

# Find the total marks for all students per test per term
apply(marks_combined_upgraded, c(1,2), sum)




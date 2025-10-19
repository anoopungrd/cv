# 1. Create a factor with values "a", "b", "c" of length 7. Add labels "Letter A",
# "Letter B", "Letter C". Summarize factor values.

factorA <- factor(c("a","b","c","a","a","c","c"),
                  levels = c("a","b","c"),
                  labels = c("Letter A","Letter B","Letter C"),
                  ordered = F)
factorA
str(factorA)


# 2. Create a numeric vector with values 1-4 and length 10. You can use any function
# for creating the vector. Values can be ordered randomly. Summarize the variable 
# and check its type. Then use this vector to create an ordered factor. Set levels
# to "low" "medium" "high" "very high". Summarize the value and compare it to the initial 
#vector. 

numV <- c(1,3,2,4,1,1,1,4,3,4)
class(numV)

numF <- factor(numV, levels = c(1,2,3,4), labels = c("low","medium","high","very high"),
               ordered = T)
numF
str(numF)



# 3. Create a matrix with 5 rows and 2 columns, filled with zeros. Save it to "table" 
# variable. 
# a) fill 1st column with values 3, 
# b) set 3rd element of 2nd column to 20. 
# c) Print values of the 2nd column. Check the type of the values in this column. 
# d) Change the 4th element of the 2nd column to "twelve". Print values of the 
# second column again. Check their type. What is different? 
# e) What is the type of the values of the first column? Why?

table <- matrix(c(0,0,0,0,0,0,0,0,0,0), nrow = 5, ncol = 2, byrow = TRUE)
table2 <- matrix(c(0,0,0,0,0,0,0,0,0,0), nrow = 5, ncol = 2, byrow = TRUE)
table
table2
table2[,1] <- 3
#a
table[,1] <- 3

#b
table[3,2] <- 20

#c
table[,2]
class(table[,2]) #numeric

#d : All the values in column 2 has been converted to character type no
#table[4,2] <- 0
table[4,2] <- "twelve"
class(table[,2])
table[,2]

class(table[,1])
table[,1]

#e
#The type of the values in first column is also character type when we changed [4,2]
#character


# 4. Create four variables with different types (vectors, matrices, single values).
# Create a list out of these objects named "myList". 
# a) Now get the second element of the list and add an additional value to it. 
# Save the change so that it will be visible in the list. 
# b) Add new elements at the end of the list - make it a 6-element vector of any type.  
# c) Print the 4th element of the last object in the list. 
# d) Change the value of the 5th element of that last object to NA.
a <- c("a","b","c","d","e")
a
b <- matrix(c(1,2,3,4,5,6,7,8),nrow = 2,ncol = 4,byrow = TRUE)
b
c <- "This is a test list"
c
d <- 255
d

myList <- list(a,b,c,d)
myList

#a
myList[[2]][2,4] <- 4
myList

#b) Add new elements at the end of the list - make it a 6-element vector of any type.
myList
addTomyList <- list("Adding 5th element","Adding 6th element")
myList <- c(myList, addTomyList)
myList

# c) Print the 4th element of the last object in the list. 
myList[[6]][4]

# d) Change the value of the 5th element of that last object to NA.
myList[[6]][5] <- NA

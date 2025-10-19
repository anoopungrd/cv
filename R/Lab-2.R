### Tasks ####
# 1. Create a numerical value with decimal part. Convert it to integer and then
# to character. See what are the changes (in values and printing).

n <- 12.5
ni <- as.integer(n)
ni

# 2. Create two variables with text. Check the documentation of paste() and try
# to use it on created vectors. Compare the results of paste() function and c(). 
# What are the differences? Why?

txt1 <- "text1"
txt2 <- "text2"

pasteVar <- paste(txt1,txt2, sep = "-",collapse = NULL, recycle0 = FALSE)
pasteVar

cVar <- c(txt1,txt2)
cVar

#The difference is that pasteVar concats the two variables with the sep = option
#and the result is a string of length 1. On the other hand, cVar uses the combine
#function c() which also outputs txt1 and txt2 as character but as two separate
#strings of length 2
#> length(cVar)
#[1] 2
#> class(cVar)
#[1] "character"
#> length(pasteVar)
#[1] 1
#> class(pasteVar)
#[1] "character"


# 3. a) Convert vector vecDate <- c("09:12:12", "28:02:16", "31:05:22") to Date 
#class. 
# HINT: DONT CHANGE ANYTHING BY HAND in the original data. Make sure to utilise 
#function parameters. 
# b) Calculate number of days between these dates and today's date.
# HINT: is there a function that will get the "today's date" automatically?

> vecDate <- c("09:12:12", "28:02:16", "31:05:22")
> vecDate
[1] "09:12:12" "28:02:16" "31:05:22"
> vecDate.Date <- as.Date(vecDate, format = '%d:%m:%y')
> vecDate.Date
[1] "2012-12-09" "2016-02-28" "2022-05-31"
> vecDate.Date.Diff <- Sys.Date() - vecDate.Date
> vecDate.Date.Diff
Time differences in days
[1] 4690 3514 1230


# 4. Create a vector "vec1" which will include numbers from 2 to 8 
#and from 17 to 30. 
# Use the shortest code possible.
> vec1 <- c(2:8,17:30)
> length(vec1)
[1] 21
> vec1
[1]  2  3  4  5  6  7  8 17 18 19 20 21 22 23 24 25 26 27 28 29 30


# 5. Create a vector "vec2" with given structure: (2,  8, 14, 20, 26, 32). 
#Use seq() function.
> vec2 <- paste(seq(2,32,by=6),collapse = ", ")
> vec2
[1] "2, 8, 14, 20, 26, 32"


# 6. Create a vector with given structure: 
#"2", "7", "a", "2", "7", "a", "2", "7", "a". TIP: rep()
> vecRep <- rep(c(2,7,"a"),3)
> vecRep
[1] "2" "7" "a" "2" "7" "a" "2" "7" "a"


# 7. Create a vector of length 100, which will store consecutive numbers 
#divisible by three. 
> vec7 <- vector(length=100)
> vec7 <- seq(3,300,by=3)
> length(vec7)


# 8. Using only one line of code create a vector "vec3" with following 
#structure:
# HINT: work smartly - if something can be done with a function or with 
#appropriate argument of
# a fuction - use it, rather than typing it down manually.  
# (1, 1, 3, 3, 5, 5, 7, 7, 9, 9, 1, 1, 3, 3, 5, 5, 7, 7, 9, 9, 1, 1, 3, 3, 5, 
# 5, 7, 7, 9, 9). 

> vec3 <- paste(rep(sort(rep(c(1,3,5,7,9),2)),3),collapse = ", ")


# 9. Generate a vector "vec4" of 50 numbers with the usage of runif() function. 
#What does
# it do? Use generated numbers to create a vector of 50 random integer values 
#from the 
# range 0-20.
> vec4 <- as.integer(c(runif(vector(,50),min=0,max=20)))
> vec4
[1]  5 15  2 11  3 14  0 17  2  8  8 14 15  2  9  5 12 10  7 19 18 11 15 10  3  5
[27] 11 16  2 16  5  8  1 16 11 17 11 14 10 11  2  5  3  7  4 16 12 15  6 10


# 10. Print values from the 5th, 10th and 26th element of previously created 
#vector (from task 9).
> vec4[c(5,10,26)]

# 11. Print values of every second element from the previously created vector, 
# starting from the 5th element of the vector. TIP: seq(). 
> vec4Seq <- vec4[seq(5,length(vec4),2)]
> vec4Seq
[1]  3  0  2  8 15  9 12  7 18 15  3 11  2  5  1 11 11 10  2  3  4 12  6

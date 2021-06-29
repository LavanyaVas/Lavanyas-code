

# 1
A <-c(1,2,7,8,9)
B <-c(2,3,5,7,8)
C <-c(3,4,7,10,11)
combine_v <- cbind(A,B,C) 
combine_v
plot(combine_v, type ="b", col="blue", pch=1, xlab="",ylab="")
title(xlab= "Row", ylab = "Coloumn", main= "Graph", col.main="Red")




#2
df <- data.frame(Name=c("John", "Bill", "Mary","Jacob", "Eva"),
                 Age=c(30,28,22,26,33),
                 Role=c("Analyst", "Developer", "Coder", "Tester", "Planner"),
                 Lenghthofservice=c(2,3,1,1,5))
print(df)
 

#3

library(ggplot2)
x<-1:20
y<-x^2
qplot(x,y)
qplot(x, y, geom=c("point", "line"))


#4
subjects<-c("Maths"=80, "English"=75, "Science"=88, "History"=60, "Geography"=70)
barplot(subjects, xlab ="Sub", ylab ="Marks", col="blue",
        main="Barplot", border="red")


#5

name<-readline("Enter the name:")
age<-readline("Enter the age: ")
hello<-paste("I am", name, "age is", age)
print(hello)





#6


print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 50:")
print(mean(20:50))
print("Sum of numbers from 20 t0 50:")
print(sum(20:50))

#7

v<-sample(-50:50, 10, replace=TRUE)
#print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)


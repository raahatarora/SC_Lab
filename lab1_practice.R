a <- 10
b <- 20

print(a > b)
print(a < b)
print(a == b)
print(a != b)


10 > 5
3 < 2
6 >= 6
4 <= 7

x <- c(2,5,8,10)
x > 6

x <- c(3,7,12,15)
x<=10

x <- 8
x>5 & x<10

x <- 15
x < 10 & x > 20

x <- 10
y <- 20
(x == 10) & (y == 20)

x <- 1:6
(x > 2) & (x<5)

x <- 8
!(x == 8)

x <- 10
!(x > 5)


x <- c(5,12,18,3,25)
!(x>10)

x <- c(10,20,NA,40,NA,60)
is.na(x)

x <- c(10,20,NA,40,NA,60)
sum(is.na(x))

x <- c(10,20,NA,40,NA,60)
x[is.na(x)] <- mean(x, na.rm = TRUE)
x

x<- -8
if(x>0){
  print("Positive")
} else {
  print("Negative or Zero")
}

x<- 5
if(x>0){
  print("Positive")
}

x <- c(10, NA, 30, NA, 50)
ifelse(is.na(x), 0, x)



#Q1


x <- c(12, NA, 25, 18, NA, 30, 10, NA)

x

is.na(x)

sum(is.na(x))

na.omit(x)

x[is.na(x)] <- mean(x, na.rm = TRUE)
x

x[is.na(x)] <- 0
x



#Q2
v <- c(5, 12, 18, 3, 25, 8, 15)

v > 10

v < 10

v >= 10 & v <= 20

v > 10

v %% 2 == 0


#Q3
x <- 10
y <- 20

(x == 10) & (y == 20)

(x == 5) & (y == 20)

(x == 10) | (y == 5)

(x > 5) & (y < 10)

!(x == 10)

!(y == 10)


#Q4

z <- c(2, 6, 9, 12, 15, 18, 21, 25)

z > 10 & z %% 3 == 0

z < 10 | z %% 5 == 0

z %% 2 != 0

sum(z > 15)


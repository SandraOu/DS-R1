# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#
# 學號: A107260032       姓名: 歐佩姍
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1(a)
study <- function(x,y){
    # x<-c(13:17)
    # y<-c(8:12)
    a <- matrix(0, 25, 5)
    for(x in 13:17){
       for(y in 8:12){
           U <- sqrt(x)*sqrt(y)
           Tuition <- 400*x+600*y
           fit <- ifelse(Tuition <= 12000, "*", "")
           cat(x,y, Tuition, U)
           data.frame(x,y, U, Tuition, fit)
       }
        cat("\n")
    }
   
}
study(x,y)



# ex2(a)
library(readxl)
mydata <- read_excel("data/Score-109.xlsx", na = "NA", skip=1)
head(mydata, 5)
tail(mydata, 5)

# ex2(b)
mydata[is.na(mydata)] <- 0
id <- which(( mydata$Calculus <60) & (mydata$English < 60))
mydata[id, ]

# ex2(c)
my.cor <- function(x1, x2){
    # x1 <- sample(0:100, 20, T)
    # x2 <- sample(0:100, 54, T)
    n1 <- length(x1)
    n2 <- length(x2)
    x1.bar <- mean(x1)
    x2.bar <- mean(x2)
    a <- (n1-1)*var(x1)+(n2-1)*var(x2)
    b <- n1+n2-2
    sp <- sqrt(a/b)
    t.stat <- (x1.bar-x2.bar)/(sp*sqrt(1/n1+1/n2))
    list(means=c(x1.bar, x2.bar),
         Pooled.sd=sp,
         t.stat=t.stat)
}

# ex3(a)
my.dnorm <- function(x){
    (exp(-(x^2)/2))/sqrt(2*pi)
}
x <- -3:3
my.dnorm(x)
dnorm(x)
data.frame(x, my.dnorm, dnorm)

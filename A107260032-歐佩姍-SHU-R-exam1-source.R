# 2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#
# 學號: A107260032       姓名: 歐佩姍
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1(a)
library(readxl)
scoreB <- read_excel("data/Calculus-score-B.xls", na = "NA", skip=1)
names(scoreB)[5:12] <- c("quiz(1)",	"quiz(2)",	"quiz(3)",
                         "quiz(4)",	"TA",	"MidtermExam",
                         "FinalExam",	"Attendance")
scoreA <- read.csv("data/Calculus-score-A.csv", header = TRUE, na = "NA")
names(scoreA)[5:12] <- c("quiz(1)",	"quiz(2)",	"quiz(3)",
                         "quiz(4)",	"TA",	"MidtermExam",
                         "FinalExam",	"Attendance")
head(scoreA, 5)
tail(scoreA, 5)
head(scoreB, 5)
tail(scoreB, 5)

# ex1(b)
score <- rbind(scoreA, scoreB)



#ex2(a)
set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)
z <- c("A", "E")
X <- "C"
y <- c("B", "D")
Letters.code %in% z

ifelse(Letters.code %in% z, 1,
       ifelse(Letters.code %in% x, 2,
        ifelse(Letters.code %in% y, 2, 3))
)




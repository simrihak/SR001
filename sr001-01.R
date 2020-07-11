
library(sjPlot)
library(Hmisc)
test <- spss.get("C:/Users/simri/Desktop/R_Work/SR001/Data4Middle2/01 중2 패널 1차년도_6차년도 데이터(SPSS)/04-1 중2 패널 1차년도 데이터(SPSS).sav",
                 use.value.labels=FALSE)

names(test)

# Variable Selection.
# Making Letter Type Vector

temp01 <- names(test)
temp01

select_variable <- c("id",        "sexw1",     "scharew1",  "areaw1",    "q2w1",      "q18a1w1",   "q18a2w1",   "q18a3w1",   "q33a01w1",  "q33a02w1",  "q33a03w1",
                     "q33a04w1",  "q33a05w1",  "q33a06w1",  "q33a07w1",  "q33a08w1",  "q33a09w1",  "q33a10w1",  "q33a12w1",  "q33a13w1",  "q33a14w1",  "q33a15w1",
                     "q34a1w1",   "q34a2w1",   "q34a3w1",   "q34a4w1",   "q34a5w1",   "q34a6w1",   "q37a01w1",  "q37a02w1",  "q37a03w1",  "q37a04w1",  "q48a01w1",  
                     "q48a02w1",  "q48a03w1",  "q48a04w1",  "q48a05w1",  "q48a06w1",  "q48b1w1",   "q48b2w1",   "q48b3w1",   "q48c1w1",   "q48c2w1",   "q48c3w1",   
                     "q48c4w1",   "q48c5w1",   "q48c6w1",   "q50w1")
test1 <- test[select_variable]

library(magrittr)

test2 <- test1 %>% subset(scharew1 >=100 & scharew1 < 200)

library(sjmisc)
library(sjlabelled)

labels.spss.values <- get_labels(test)
labels.spss.values <- labels.spss.values[select_variable]

# Error occur when I run below command.
test2 <- set_labels(test2, labels.spss.values, force.values=FALSE, force.labels=TRUE)
                    

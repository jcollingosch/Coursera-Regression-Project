
library("caret")

set.seed(123)
fit <- train(mpg~.,data = mtcars, method = "lmStepAIC")

# fit <- regsubsets(mpg~.,data=mtcars)

lm_fit <- lm(mpg~wt+qsec+am,data=mtcars)

summary(lm(mpg~cyl+hp+wt,data=mtcars))

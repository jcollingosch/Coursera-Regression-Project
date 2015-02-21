
library("caret")
library("ggplot2")

#eda
ggplot(mtcars, aes(x=factor(am), y=mpg, fill=factor(am))) +
  geom_boxplot() +
  guides(fill=guide_legend(title="Transmission")) +
  labs(x="Transmission (0 = automatic, 1 = manual)",
       title="MPG by Transmission")

pairs(mtcars,pch=20)

# fit candidate models
set.seed(123)
fit <- train(mpg~.,data = mtcars, method = "lmStepAIC")

# choose final model
lm_fit <- lm(mpg~wt+qsec+am,data=mtcars)

# check model output
summary(lm(mpg~cyl+hp+wt,data=mtcars))

par(mfrow=c(2,2))
plot(lm_fit)

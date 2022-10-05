library(poliscidata)

#Question 1 weighted bivariate regression analysis
as.numeric(nes$pid_x=="partisanship")
sentiment.towards.gays=svyglm(ftgr_gay~pid_x,design=nesD)
summary(sentiment.towards.gays)
fit.svyglm(sentiment.towards.gays)
svyplot(ftgr_gay~pid_x,design=nesD)
plot(nes$ftgr_gay~nes$pid_x)

#Question 3 marital status effect on sentiment towards gays
sentiment.towards.gays.marital=svyglm(ftgr_gay~pid_x+married,design=nesD)
summary(sentiment.towards.gays.marital)
fit.svyglm(sentiment.towards.gays.marital)

#Question 4 plotting sentiment towards gays
as.numeric(nes$pid_x=="partisanship")
summary(lm(nes$ftgr_gay~nes$pid_x+nes$married))
plot(x=nes$pid_x,y=nes$ftgr_gay,xlab="partisanship",ylab="sentiment towards gay")
abline(a=62.1957,b=nes$pid_x,col="black")
abline(a=62.1957-3.5157,b=nes$pid_x,col="red")
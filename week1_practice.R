#### statistic with R on fun

setwd(dir = "../../fun-mooc/statitic with R/")

install.packages("prettyR")

install.packages("binom")

library(tidyverse)
library(prettyR)
library(binom)
library(prettyR)

smp <- read.csv2("./smp1.csv")

smp$ed.b <- smp$ed > 2
smp$ed.b <- ifelse(smp$ed > 2, 1, 0)
table(smp$ed.b, useNA = "always")

smp %>%
  group_by(ed.b) %>%
  summarize(age_sd = sd(age,na.rm = TRUE))
  

subject <- rep(1:5,2)

group <- rep(c("b", "w2"), each= 5)

measure <- c(140, 138, 150, 148, 135, 132, 135, 151, 146, 130)

df <- data.frame("subject" = subject, "group"= group, "measure" = measure)
df

g1 <-df %>% 
  filter(group == "b") %>%
  select(measure)

g2 <-df %>% 
  filter(group == "w2") %>%
  select(measure)

difference <- g2 - g1
mn <- mean(difference$measure)
s <- sd(difference$measure)
n <- 6

t.test(difference$measure)
pt(.975,df = 16, lower.tail = FALSE)
5*0.0625
power.t.test(n = 100, delta = .01, sd = .04, 
             alternative = "one.sided", type = "one.sample",
             sig.level = .05)
power.t.test(power = .9, delta = .01,  type = "one.sample",
             sd = .04, alternative = "one.sided", 
             sig.level = .05)

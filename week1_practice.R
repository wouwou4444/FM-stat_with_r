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
  
  
#-----------------------------------------------------------------------------#
#Created by: Ugochinyere V. Ejiogu
#Created on: 03.04.21
#Last modified: 03.05.21
#Modified by: Ugochinyere V. Ejiogu
#Project: Quantitative Public Health Data Literacy Training
#Analysis: Lesson #4

#HW 2
#-----------------------------------------------------------------------------#

# Install packages
install.packages("readxl")
library(readxl)

#-------------------------------- Problem 4.1 --------------------------------#

# a) Pull the limitations data into R
limitations <- read_excel("/Users/ugochi/Documents/NYU Data Literacy Training/limitations.xlsx")

# b) How many females are in the sample?
table(limitations$female)
  # answer: 351

# c) How many white males are in the sample?
table(limitations$female, limitations$race)
  # answer: 189

# d) What is the mean and standard deviation of BMI for this sample?
mean(limitations$bmi)
  # answer: 28.04
sd(limitations$bmi)
  # answer: 6.20

# e) What is the median and IQR of BMI?
median(limitations$bmi)
  # answer: 26.63
IQR(limitations$bmi)
  # answer: 7.96

# f) What is the mean and standard deviation of BMI for females in this sample?
mean(limitations$bmi[limitations$female==1])
  # answer: 27.63
sd(limitations$bmi[limitations$female==1])
  # answer: 6.39

# g) What is the median and IQR of BMI for females?
median(limitations$bmi[limitations$female==1])
  # answer: 26.26
IQR(limitations$bmi[limitations$female==1])
  # answer: 8.94


#-------------------------------- Problem 4.2 --------------------------------#

# a) Import the NHANES_sample data from excel into R
nhanes_sample <- read_excel("/Users/ugochi/Documents/NYU Data Literacy Training/NHANES_sample.xlsx")

# b) What is the mean and SD of age in this sample?
mean(nhanes_sample$age)
  # answer: 40.34
sd(nhanes_sample$age)
  # answer: 21.56

# c) What is the median and IQR of urine lead level?
median(nhanes_sample$lead)
  # answer: 0.33
IQR(nhanes_sample$lead)
  # answer: 0.455

# d) How many non-Hispanic whites are in the sample?
table(nhanes_sample$race)
  # answer: 54

# e) How many white males are in the sample?
table(nhanes_sample$race, nhanes_sample$sex)
  # answer: 24

# f) What is the mean and SD of urine lead levels for Blacks?
mean(nhanes_sample$lead[nhanes_sample$race==2])
  # asnwer: 0.62
sd(nhanes_sample$lead[nhanes_sample$race==2])
  # answer: 0.54

# g) What is the median and IQR of urine lead levels for males?
median(nhanes_sample$lead[nhanes_sample$sex==1])
  # answer: 0.45
IQR(nhanes_sample$lead[nhanes_sample$sex==1])
  # answer: 0.59

# h) What is the mean and SD of age for females?
mean(nhanes_sample$age[nhanes_sample$sex==2])
  # asnwer: 42.19
sd(nhanes_sample$age[nhanes_sample$sex==2])
  # answer: 20.55

# i) What is the median and IQR of age for whites?
median(nhanes_sample$age[nhanes_sample$race==1])
  # answer: 39.5
IQR(nhanes_sample$age[nhanes_sample$race==1])
  # answer: 32.25

# j) How many Black males are in the sample?
table(nhanes_sample$sex, nhanes_sample$race)
  # answer: 23

# k) How many Blacks are in the sample?
table(nhanes_sample$race)
  # answer: 46

# l) How many observations are in the sample?
str(nhanes_sample)
  # answer: 100

# m) What is the minimum value of age in the sample?
summary(nhanes_sample$age)
  # answer: 6

# n) What is the maximum value of urine lead level?
summary(nhanes_sample$lead)
  # answer: 2.79

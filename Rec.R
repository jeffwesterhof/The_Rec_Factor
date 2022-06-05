rec <- read.csv("C:/Users/jwest/Documents/Final Project/NIJ_s_Recidivism_Challenge_Full_Dataset.csv", header = T)
summary(rec)
head(rec)

install.packages('epiDisplay')
library(epiDisplay)
race <-tabpct(rec$Race, rec$Recidivism_Within_3years, percent = 'row',
              main = 'Recidivism & Race', xlab = 'Race', ylab = 'Recidivism',
              col = c('green','red'))
age<-tabpct(rec$Age_at_Release, rec$Recidivism_Within_3years, percent = 'row',
            main = 'Recidivism & Age', xlab = 'Age', ylab = 'Recidivism',
            col = c('green','red'))

gender<-tabpct(rec$Gender, rec$Recidivism_Within_3years, percent = 'row',
            main = 'Recidivism & Gender', xlab = 'Gender', ylab = 'Recidivism',
            col = c('green','red'))

education<-tabpct(rec$Education_Level, rec$Recidivism_Within_3years, percent = 'row',
               main = 'Recidivism & Education', xlab = 'Education', ylab = 'Recidivism',
               col = c('green','red'))
dependents<-tabpct(rec$Dependents, rec$Recidivism_Within_3years, percent = 'row',
               main = 'Recidivism & Dependents', xlab = 'Dependents', ylab = 'Recidivism',
               col = c('green','red'))
offence<-tabpct(rec$Prison_Offense, rec$Recidivism_Within_3years, percent = 'row',
               main = 'Recidivism & Offence', xlab = 'Offence', ylab = 'Recidivism',
               col = c('green','red'))
sentence<-tabpct(rec$Prison_Years, rec$Recidivism_Within_3years, percent = 'row',
                main = 'Recidivism & Sentence', xlab = 'Sentence', ylab = 'Recidivism',
                col = c('green','red'))
felony<-tabpct(rec$Prior_Arrest_Episodes_Felony, rec$Recidivism_Within_3years, percent = 'row',
                main = 'Recidivism & Felony Arrests', xlab = 'Arrests', ylab = 'Recidivism',
                col = c('green','red'))
Misdemeanor<-tabpct(rec$Prior_Arrest_Episodes_Misd, rec$Recidivism_Within_3years, percent = 'row',
               main = 'Recidivism & Misdemeanor Arrests', xlab = 'Arrests', ylab = 'Recidivism',
               col = c('green','red'))
MH_condition<-tabpct(rec$Condition_MH_SA, rec$Recidivism_Within_3years, percent = 'row',
              main = 'Recidivism & Mental health/Substance', xlab = 'MH conditions?', ylab = 'Recidivism',
              col = c('green','red'))
Cog_condition<-tabpct(rec$Condition_Cog_Ed, rec$Recidivism_Within_3years, percent = 'row',
                     main = 'Recidivism & Cognitive conditions', xlab = 'Cog conditions?', ylab = 'Recidivism',
                     col = c('green','red'))
Oth_condition<-tabpct(rec$Condition_Othe, rec$Recidivism_Within_3years, percent = 'row',
                      main = 'Recidivism & Other conditions', xlab = 'Oth conditions?', ylab = 'Recidivism',
                      col = c('green','red'))
delinquency<-tabpct(rec$Delinquency_Reports, rec$Recidivism_Within_3years, percent = 'row',
                      main = 'Recidivism & delinquency', xlab = 'Delinquencies', ylab = 'Recidivism',
                      col = c('green','red'))
attendance<-tabpct(rec$Program_Attendances, rec$Recidivism_Within_3years, percent = 'row',
                    main = 'Recidivism & Program attendance', xlab = 'Attendances', ylab = 'Recidivism',
                    col = c('green','red'))
absences<-tabpct(rec$Program_UnexcusedAbsences, rec$Recidivism_Within_3years, percent = 'row',
                   main = 'Recidivism & Program absence', xlab = 'Absence', ylab = 'Recidivism',
                   col = c('green','red'))
residence<-tabpct(rec$Residence_Changes, rec$Recidivism_Within_3years, percent = 'row',
                   main = 'Recidivism & Residence changes', xlab = 'Residences', ylab = 'Recidivism',
                   col = c('green','red'))

sapply(rec[,c(2,3,4,5,6,8,9,10,11,12,13,14,31,32,33,38,39,40,41)], function(x) table(x)/nrow(rec))

sd(rec$Avg_Days_per_DrugTest[!is.na(rec$Avg_Days_per_DrugTest)])
sd(rec$DrugTests_THC_Positive[!is.na(rec$DrugTests_THC_Positive)])
sd(rec$DrugTests_Cocaine_Positive[!is.na(rec$DrugTests_Cocaine_Positive)])
sd(rec$DrugTests_Meth_Positive[!is.na(rec$DrugTests_Meth_Positive)])
sd(rec$DrugTests_Other_Positive[!is.na(rec$DrugTests_Other_Positive)])
sd(rec$Percent_Days_Employed[!is.na(rec$Percent_Days_Employed)])
sd(rec$Jobs_Per_Year[!is.na(rec$Jobs_Per_Year)])


hist(rec$Supervision_Risk_Score_First)
hist(rec$Percent_Days_Employed)
hist(rec$Jobs_Per_Year)



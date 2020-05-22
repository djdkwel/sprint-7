case.data<-read.csv(file.choose(),stringsAsFactors = TRUE,header=TRUE, sep = ",")
View(case.data)

case.data<-case.data[-1124,]
case.data<-case.data[-1124,]

levels(case.data$deposit)
is.na(case.data$deposit) <- !case.data$deposit
case.data[is.na(case.data$deposit),"deposit"]<- median(case.data$deposit,na.rm = T)

case.data$job[case.data$job==""]<-NA
levels(case.data$job) <- c(levels(case.data$job), "unknown")
case.data[is.na(case.data$job),"job"]<- "unknown"

case.data$marital[case.data$marital==""]<-NA
levels(case.data$marital) <- c(levels(case.data$marital), "unknown")
case.data[is.na(case.data$marital),"marital"]<- "unknown"

case.data$education[case.data$education==""]<-NA
levels(case.data$education) <- c(levels(case.data$education), "unknown")
case.data[is.na(case.data$education),"education"]<- "unknown"

is.na(case.data$balance) <- !case.data$balance
case.data[is.na(case.data$balance),"balance"]<- median(case.data$balance,na.rm = T)

case.data$contacted[case.data$contacted==""]<-NA
levels(case.data$contacted) <- c(levels(case.data$contacted), -1)
case.data[is.na(case.data$contacted),"contacted"]<- -1

is.na(case.data$loanvalue) <- !case.data$loanvalue
case.data[is.na(case.data$loanvalue),"deposit"]<- median(case.data$loanvalue,na.rm = T)
hist(case.data$loanvalue)
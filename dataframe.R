#bookmarks

#vector----

#matrices----

#Array----

#dataframes----

(rollno = 1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks1=floor(rnorm(30,40,5)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA', 'MBA'),size=30, replace=T, prob=c(0.5,0.5)))

rollno;sname;gender
marks1; marks2; course

table(gender)
prop.table(table(gender))

#Create DF
df1=data.frame(rollno,sname,gender,marks1,marks2,course, stringsAsFactors = F) #stringsAsFactors = F makes male and female as just some words rather than becoming some category, if we had not done F then the male and female would come as 1 and 2
str(df1)
head(df1)
head(df1,n=3)
tail(df1)
class(df1)
summary(df1)
nrow(df1)
ncol(df1)
dim(df1)
length(df1)
df1$course
df1$marks1
df1$gender=factor(df1$gender) #creates the male and female as factors so that in the summary we get male and female count which wasn't available in the summary previously
df1$course=factor(df1$course)
summary(df1)

boxplot(marks1~gender, data=df1)
boxplot(marks1~course, data=df1)
boxplot(marks1~course + gender, data=df1)

df1

df1[1:5,1:4]

df1[marks1 > 44 & gender=='F',c('rollno','sname','gender', 'marks')]

aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggregate(marks1~gender, data=df1, FUN=max)
aggregate(cbind(marks1,marks2) ~ gender, data=df1, FUN=max)

(df2=aggregate(cbind(marks1,marks2)~gender + Course), data=df1, FUN=max)



#grades----
(grades=sample(c('A','B','C','D'), size=30, replace=T, prob=c(0.3,0.2,0.4,0.1)))
summary(grades)
table(grades)
(gradesFactor=factor(grades))
summary(gradesFactor)
(gradesFactorOrdered=factor(grades,ordered=T))
summary(gradesFactorOrdered)
pie(c(10,15,17))
pie(gradesFactorOrdered)

(gradesFactorOrderedLevels=factor(grades, ordered=T, levels=c('D','C','B','A')))
summary(gradesFactorOrderedLvels)

  
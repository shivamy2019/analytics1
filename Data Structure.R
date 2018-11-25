c(2,4,6)
seq(2,3,by=0.5)
?seq

seq(2,3,0.5)
seq(by=0.1, from=2, to=3)

rep(1:3, times=4)
rep(c(1:3,5,6,6), times=3)
(x1=1:30)
(x2=c(1,2,13,5,4))
class(x2)

(x3=c('a',"abc"))
(class(x3))

LETTERS[1:26]
letters[1:26]
letters[1:27]

(x6=seq(0,100,3))
length(x6)
x6[1:3]
x6[10:20]
x6[seq(1,100,2)]
x6[seq(1,length(x6),2)]
x6[c(3,4)]
x6[x6>30 & x6 <40]
x6[-(length(x6)-1)]

set.seed(1234)
(x6=sample(1:50))
sort(x6)
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
rev(x6)
(x6[2:10]=99)
x6

(x=seq(1,5,length.out=15))

?distribution


x1=rnorm(100,mean=50, sd=5)
plot(density(x1))
abline(v=mean(x1))
abline(h=0.04)
hist(x1)
hist(x1, freq=F)
lines(density(x1),col=2)
summary(x1)

x2=rnorm(100,mean=50, sd=5)
plot(density(x2))
abline(v=mean(x2))
abline(h=0.04)
hist(x2)
hist(x2, freq=F)
lines(density(x2),col=2)
summary(x2)

quantile(x1)
quantile(x1, c(0.1,0.33,0.6))
stem(x1)

(m1=matrix(100:111, nrow=4))
matrix(1,ncol=3,nrow=4)
(m2=matrix(100:111, ncol=3, byrow=T))  
m2[1,2]
x=101:124
length(x)
m5=matrix(x,ncol=6)
class(m5)
attributes(m5)
dim(m5)
m5

m5[1,]  #returns the first row
m5[,-1] #returhn the matrix withoug the matrix without first column

m5[1,2:3]
m5[,-c(1,3),drop=F]

m5[m5>105& m5<112]
paste("C","D",sep="_")
(colnames(m5)=paste("C",1:6,sep="")) #give name to col
(rownames(m5)=paste("R",1:4,sep="")) #give name to row
m5
attributes(m5)

m5[,c('C1','C3')]


#vector to matrix
m3=1:24
m3
dim(m3)=c(6,4)
m3

m3[1:5]
m3
m3[c(T,F,T,T,F,T),c(T,T,T,T)]
m3[,3]=10
m3
m3[m3>22]=100
m3
rbind(m3,c(50,51,51,51))
cbind(c(10,10,10,10,10,10,10),m3)
?addmargins

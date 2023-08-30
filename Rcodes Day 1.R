#### SLIDE 7
plot(rnorm(50))

#### SLIDE 9 Math Operation

2+2
5-2
7*3
8/4
3^3
exp(1)
log(exp(1))
log10(10)
log(4,2)
pi
cos(pi)
sin(pi/2)
min(1,7,8)
max(1,7,8)

#### SLIDE 10 Logical Operation

2==2
2!=2
1<5
2>1
7<=6
5>=3
T&T
T|F
(2==2)|(1>2)
!(2==2)


#### SLIDE 13 Define variables

x<-2
x
y=3
4->z
z
a1<-x->A1

A1
a1.plus.A1<-a1+A1
a1.plus.A1
ls()

#### SLIDE 12 Vector Operation

c(1,2,6)
1:6
seq(21,40)
seq(1,4,.5)
rep(c(1,2),3)
rep(c(1,2),c(3,3))
rep(c(1,2,3),c(3,2,1))
m<-matrix(1:6,c(3,2))
m

weight<-c(60,72,57,90,95,72)
height<-c(1.75,1.80,1.65,1.90,1.74,1.91)
weight
height
weight[5]
weight[1:3]
weight[c(1,3,5)]
weight[-c(2,4)]
weight>80
weight[weight>80]
length(weight)
dat1<-cbind(weight,height)
dim(dat1)
colnames(dat1)
rownames(dat1)
dat2<-rbind(weight,height)
dim(dat2)
colnames(dat2)
rownames(dat2)
dat1[1,1]
dat1[1,2]
dat1[1,]
dat1[,2]
dim(dat1)
dim(dat2)

dat1
t(dat2)
dummy<-dat1[1:2,1:2]
det(dummy)
dummy*dummy
dummy^2
dummy%*%dummy
diag(dummy)

weight/2
weight/seq(1:6)

## bmi stands for body mass index

bmi<-weight/height^2
bmi
sum(weight)
xbar<-sum(weight)/length(weight)
xbar
mean(weight)
s<-sqrt(sum((weight-xbar)^2)/(length(weight)-1))
s
sd(weight)

"test"
"test"=="test"
letters
letters[1:4]
letters[26]

gender<-c("m","f","m","m","f","f")
gender=="m"
weight[gender=="m"]
mean(weight[gender=="m"])
mean(weight[gender=="f"])
sd(weight[gender=="m"])
sd(weight[gender=="f"])






#### SLIDE 13 Class of objects in R

weight
class(weight)
mode(weight)
is.numeric(weight)
is.vector(weight)
is.matrix(weight)

m
class(m)
mode(m)
is.numeric(m)
is.vector(m)
is.matrix(m)

m2<-matrix(letters[1:4],c(2,2))
class(m2)
mode(m2)
is.numeric(m2)
is.character(m2)
is.matrix(m2)

gender
class(gender)
mode(gender)
is.character(gender)
is.numeric(gender)
is.vector(gender)
is.matrix(gender)


g1<-gender=="m"; g1
class(g1)
mode(g1)
is.logical(g1)
is.numeric(g1)
is.vector(g1)
sum(g1)
mean(g1)



g2<-as.numeric(g1); g2
g3<-as.character(g1); g3

w<-as.character(weight)
w
mode(w)
class(w)
dat3<-data.frame(weight,height,gender)
dat3
mode(dat3)
class(dat3)
is.list(dat3)
is.data.frame(dat3)


names(dat3)
rownames(dat3)
colnames(dat3)
dim(dat3)
dat3[,1]
dat3[2,]
dat3$weight
is.numeric(dat3$height)
dat3$gender
class(dat3$gender)
levels(dat3$gender)
levels(dat3$gender[1])
dat3$gender=="m"
gender
factor(gender)

m
M<-data.frame(m); M
names(M)<-c("1st Col","2nd Col")
rownames(M)<-letters[1:3]
M

#### SLIDE 14 Help documentation in R
help(mean)
?sd
help(plot)
plot(weight,height)

plot(weight)
plot(weight,height,type="l",col="blue")
windows()
plot(weight,height,pch=2,main="Main Title")


#### SLIDE 15 Fix some values in objects
ls()
remove(a1)
ls()
remove(A1,a1.plus.A1)
## To remove all try
## remove()
## Also mention Remove all Objects from menu

fix(weight)
fix(gender)
fix(m)
fix(dat3)

weight
summary(weight)
summary(gender)
summary(dat3$gender)
summary(m)
summary(m2)
summary(dat3)
summary(M)

#### SLIDE 16 Setting working directory

getwd()
dir()
setwd("C:/")
getwd()
shell("mkdir RFolder")
setwd("C:/RFolder")
getwd()





#### SLIDE 17

library(rpart)
help(rpart)
load(kyphosis)
kyphosis
summary(kyphosis)
fit <- rpart(Kyphosis ~ Age + Number + Start, data=kyphosis)
plot(fit)
text(fit)

#### SLIDEs 18 Import/Export data
dir()
ex1<-read.table("example1.txt")
ex1
summary(ex1)
help(read.table)
ex1<-read.table("example1.txt",header=T)
ex1
is.data.frame(ex1)

ex2<-read.csv("example2.csv",T)
ex2

library(foreign)
help(read.spss)
ex3<-read.spss("example3.sav",to.data.frame=T)

help(write.table)
write.table(ex1,file="out1.txt")
shell("out1.txt")
write.csv(ex2,file="out2.csv",row.names=F)
help(write.foreign)

### SLIDE 19 Save Data Image

help(save.image)
save.image()
save.image(file="dat1.Rdata")
save.image(dat1,dat2,"dat2.Rdata")
help(load)

load("dat1.Rdata")
load("dat2.Rdata")

#### SLIDE 20 Graphs
help(plot)
plot(weight,height)
plot(weight,height,pch=2,type="b",main="Main Title",sub="Sub Title", xlab="X Label",ylab="Y  Label")
windows()
help(par)
par(mfrow=c(2,2))
plot(height)
hist(weight,col="yellow")
boxplot(cbind(weight,height),col="lightgreen")
plot(factor(gender),col=c("pink","lightblue"))
help(savePlot)
savePlot("myPlot",type="png")
dir()
shell("myPlot.png")

##### SLIDE 21 Write functions in R
power<-function(x,n=2){ x^n }
power(x=10)
power(10,n=3)
power(10,4)

product<-function(x){
  n<-length(x)
  if(n==1){ out<-x }
  if(n!=1){ 
    out<-x[1]
    for(i in 2:n){
      out<-out*x[i]
    }
  }
  return(out)
}

product(weight)
prod(weight)
help(prod)

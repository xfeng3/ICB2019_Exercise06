#Question 1
loaddata = read.csv(file='wages.csv',header = TRUE)
#read csv file wages and change its name to loaddate
#define loaddata as the variable to represent the file
head(loaddata,n=5)
#the variable 'n' representing the number of lines to be returned



#Question 2 
dat <- data.frame(read.csv(file='iris.csv'),seq=',',header=TRUE)
#load the data in 'iris.csv'
dat[(nrow(dat)-1):nrow(dat),(ncol(dat)-1):ncol(dat)]
#print the last 2 rows in the last 2 columns
length(which(dat[ ,5]=='setosa'))
length(which(dat[ ,5]=='versicolor'))
length(which(dat[ ,5]=='virginica'))
#the number of observations for each species
dat[which(dat[,2]>3.5), ]
#rows with Sepal.Width > 3.5
setosa <- dat[which(dat[ ,5]=='setosa'), ]
write.table(setosa,file='setosa.csv',sep=',')
#create and write data to setosa.csv
vir <- dat[which(dat[ ,5]=='virginica'), ]
mean(vir[ ,3])
max(vir[ ,3])
min(vir[ ,3])
#mean, minimum and maximum of Petal.length for observations from virginica

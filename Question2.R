dat <- data.frame(read.csv(file='iris.csv'),seq=',',header=TRUE))
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

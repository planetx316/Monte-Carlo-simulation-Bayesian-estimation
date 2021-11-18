set.seed(32)
m=1000
a=2.0
b=1/3.0

#simulating gamma values
theta=rgamma(m,a,b)
hist(theta,freq=F)
curve(dgamma(x,a,b),col='blue',add=TRUE)

#Mean of the simulated values will get us closer to the true mean using the Law of large numbers
mean(theta)


#To calculate P(theta<5)
ind=theta<5
ind
mean(ind) #this is the P(0<theta<5)
pgamma(q=5.0, a,b) #this is close to the MC value

#90th percentile
quantile(theta,probs=0.9)
qgamma(p=0.9, a,b)
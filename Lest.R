library(spatstat)
data(mydata_cliwoc)
L <- Lest(mydata_cliwoc)
plot(L, main="L function for mydata_cliwoc")
vignette('getstart')
point_pattern <- ppp(Latlon$Lon3,Latlon$Lat3, c(-200, 200), c(-200,200))
plot(point_pattern)
plot(envelope(point_pattern, Kest))
plot(density(point_pattern))
plot(Kest(point_pattern))
plot(Lest(point_pattern))
plot(Gest(point_pattern))
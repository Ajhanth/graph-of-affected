# In this script I have made a graph that shows how many people are affected by Covid-19 in different cities in Norway

# Bergen smittede i augugst(Data hentet fra VG)

x1=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)
s1=c(0,1,3,0,2,2,4,0,0,1,1,0,5,0)

dagerb <- x1

sm <- s1

# Oslo smittede i augugst(Data hentet fra VG)

x2=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14) #(dager)
s2=c(3,3,13,10,17,21,34,14,6,11,21,7,18,21) #(smittede)

so <- s2

# Stavanger smittede i augugst(Data hentet fra VG)

x3=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14) #(dager)
s3=c(0,0,1,0,2,1,2,0,0,1,1,0,0,2) #(smittede)

ss <- s3


# Trondheim smittede i augugst #(Data hentet fra VG)

h=c(-3,-3,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14) #(dager)
s3=c(0,1,1,2,1,1,4,1,4,1,3,2,0,2) #(smittede)

dagb <- h

st <- s3

# Linjediagram for alle overnevnte byer


plot(dagb,type = "o", lwd=2,
     xaxt="n",ylim =c(0,39),col="black",
     xlab = "Første 14 dagene i august",
     ylab = "Smiitede for hver dag",
     main = "Sammenligning av byer")
axis(1,at=1: length(dagerb), labels = dagerb)
lines(sm,col="red",type ="b",lwd=2,pch = c(20))
lines(so,col="blue",type ="b",lwd=2,pch = c(20))
lines(ss,col="yellow",type ="b",lwd=1,pch = c(20))
lines(st,col="green",type ="b",lwd=2,pch = c(20))

legend("topleft",
       legend = c("Bergen","Oslo","Stavanger","Trondheim"),
       col = c("red","blue","yellow","green"),
       pch = c(20)
      )


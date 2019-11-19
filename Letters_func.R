library(installr)
library(devtools)
library(pkgbuild)
#library(Rtools)
install.packages("Rtools")
alph<-function(x){
  sample(letters,1)
}



package.skeleton(list = "alph",name = "returnALetter")



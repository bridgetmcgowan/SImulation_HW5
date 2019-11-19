library(installr)
library(devtools)
library(pkgbuild)

alph<-function(x){
  sample(letters,1)
}



package.skeleton(list = "alph",name = "returnALetter")



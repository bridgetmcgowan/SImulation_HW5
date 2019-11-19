
library(devtools)

alph<-function(x){
  sample(letters,1)
}

package.skeleton(list = "alph",name = "returnALetter")



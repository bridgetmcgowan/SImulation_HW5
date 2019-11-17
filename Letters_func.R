alph<-function(x){
  sample(letters,1)
}




start<-Sys.time()
lapply_test<-lapply(1:1000000,alph)
stop<-Sys.time()
stop-start

library(foreach)
library(doParallel)
library(parallel)
cores<-detectCores()-1

start<-Sys.time()
cl<-makeCluster(cores)

par_test<-parLapply(cl,1:1000000,alph)
stop<-Sys.time()
stop-start

#foreach(x=1:1000000, .combine = c) %dopar% alph()

start<-Sys.time()
mc_test<-mclapply(1:1000000,alph)
end<-Sys.time()
end-start
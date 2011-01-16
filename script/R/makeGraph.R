#import file and convert plot data to graph.

x <- read.table("~/Desktop/result-packet-data",sep=" ")
plot(x[,c(1)],x[,c(2)])

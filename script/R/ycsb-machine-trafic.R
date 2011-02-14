#This Program is to import file and convert plot data to graph.

#set the variable
ylimit <-50000000
xlimit <-6000
colors <-colors()[c(10,20,30,40,50,60,70,80,90,100,120,130)]
#graph_title="Figure 5.2:The relation between the number of Nodes and Network traffic"
graph_title=""
xlab <- "Queries(query/s)"
ylab <- "traffic(Mbit/s)"
#data-file list
number <-c(500,1000,2000,3000,4000,5000)
y <- c(4276048,8459283.2, 16877819.2,25405293.6
, 34613149.6,43557490.4)


plot(number,y,ylim = c(0,ylimit),xlim=c(0,xlimit),yaxt="n",main=graph_title,ylab=ylab,xlab=xlab,cex.lab  = 1.8,cex.main = 1.2,cex.axis=1.8,pch=1,cex = 2.)
axis(2,at=c(0,5000000,10000000,20000000,30000000,40000000,50000000),labels=c("0","5","10","20","30","40","50"),cex.axis=1.7)

par(new=T)
curve(8727.9 * x - 348939,ylim = c(0,ylimit),xlim=c(0,xlimit), yaxt="n",main=graph_title,xlab=xlab,ylab=ylab,cex.lab= 1.8,cex.main = 1.2,cex.axis=1.8,col="red")



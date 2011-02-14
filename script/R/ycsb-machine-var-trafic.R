#This Program is to import file and convert plot data to graph.

#set the variable
ylimit_min <- 0
ylimit <-50000000
xlimit_min <-2.5
xlimit <-5.5
colors <-colors()[c(10,20,30,40,50,60,70,80,90,100,120,130)]
#graph_title="Figure 5.2:The relation between the number of Nodes and Network traffic"
graph_title=""
xlab <- "number of Machines"
ylab <- "traffic(Mbit/s)"
#data-file list
number <-c(3,4,5)
y <- c(42318910.4,42679366.4, 43557490.4)


plot(number,y,ylim = c(ylimit_min,ylimit),xlim=c(xlimit_min,xlimit),yaxt="n",xaxt="n",main=graph_title,ylab=ylab,xlab=xlab,cex.lab  = 1.8,cex.main = 1.2,cex.axis=1.8,pch=1,cex = 2.)
axis(2,at=c(0,5000000,10000000,20000000,30000000,40000000,50000000),labels=c("0","5","10","20","30","40","50"),cex.axis=1.7)
axis(1,at=c(3,4,5),labels=c("3","4","5"),cex.axis=1.7)



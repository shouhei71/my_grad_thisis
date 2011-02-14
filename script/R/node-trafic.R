#This Program is to import file and convert plot data to graph.

#set the variable
ylimit <-25000000
colors <-colors()[c(10,20,30,40,50,60,70,80,90,100,120,130)]
#graph_title="Figure 5.2:The relation between the number of Nodes and Network traffic"
graph_title=""
xlab <- "number of nodes"
ylab <- "traffic (Mbps)"
#data-file list
data_file_name <- c(
"/Users/shohei/c-packet/nodo_scale/node30/20110107225603/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node60/20110107230608/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node90/20110107231619/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node120/20110107232631/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node150/20110107233712/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node180/20110107234754/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node210/20110111120636/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node240/20110108000948/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node270/20110108002100/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node300/20110108003212/final_result_by_10"
)
par (mar = c(6, 5, 1, 1))
par(lwd = 1) 
number <-c(30,60,90,120,150,180,210,240,270,300)
y <- c(0,0,0,0,0,0,0,0,0,0)
#draw graph
counter<-1
while ( counter <=length(data_file_name)){
	#read data
	x <- read.table(data_file_name[counter],sep=" ")
	y[counter] <- mean(x[c(20:40),c(2)])
	counter<-counter+1
}
#convert to byte and /s.
y <- y * 8 /10

plot(number,y,ylim = c(0,ylimit),xlim=c(0,320),yaxt="n",main=graph_title,ylab=ylab,xlab=xlab,cex.lab  = 2.5,cex.main = 1.2,cex.axis=2.2,pch=1,cex = 3.0

)

axis(2,at=c(0,5000000,10000000,15000000,20000000,25000000,30000000),labels=c("0","5","10","15","20","25","30"),cex.axis=2.5)

par(new=T)
par(lwd = 3) 

curve(224.6 * (x^2) + 4314.8 * x,ylim = c(0,ylimit),xlim=c(0,320), yaxt="n",main=graph_title,xlab=xlab,ylab=ylab,cex.lab= 2.5,cex.main = 1.2,cex.axis=2.2,col="red"
)



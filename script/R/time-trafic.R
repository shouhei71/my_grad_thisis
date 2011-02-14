#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-600
ylimit <-25000000
colors <-colors()[c(30,50,60,90,100,120,130)]
pchs <- c(0,1,2,3)
#graph_title="Figure 5.1:The transition of network trafic per 10 seconds"
graph_title=""
xlab <- "time (sec)"
ylab <- "traffic (Mbps)"

#data-file list
data_file_name <- c(
"/Users/shohei/c-packet/nodo_scale/node30/20110107225603/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node60/20110107230608/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node90/20110107231619/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node120/20110107232631/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node150/20110107233712/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node180/20110107234754/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node210/20110111120636/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node240/20110108000948/final_result_by_10",
#"/Users/shohei/c-packet/nodo_scale/node270/20110108002100/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node300/20110108003212/final_result_by_10"
)
par (mar = c(6, 5, 1, 1))
#fname()
#draw graph
counter<-1
while ( counter <=length(data_file_name)){
	if (counter != 1){
		#specified overiding
		par(new=T)
	}
	#read data
	x <- read.table(data_file_name[counter],sep=" ")
	x <- read.table(data_file_name[counter],sep=" ")
	x[,c(1)] <- x[,c(1)] * 10
	x[,c(2)] <- x[,c(2)] * 8 /10
	#drawing
	plot(type="b",x[,c(1)],x[,c(2)],xlim= c(0,xlimit),ylim = c	(0,ylimit),yaxt="n",main=graph_title,xlab=xlab,ylab=ylab
,cex = 3.0

,cex.lab  = 2.5,cex.main = 1.4,cex.axis=2.2,
pch=pchs[counter]
,col=colors[length(data_file_name) - counter +1]
)

	#plot mean when being stable

	#specified overiding
	par(new=T)
	#abline(h=mean(x[c(20:40),c(2)]),col=colors[counter])	
	counter<-counter+1
}
axis(2,at=c(0,5000000,10000000,15000000,20000000,25000000),labels=c("0","5","10","15","20","25"),cex.axis=2.5)
legend(300,ylimit/5*4,legend=c("node=300", "node=210","node=120","node=30"),cex = 2.2
,pch=c(3,2,1,0)
,y.intersp = 0.6
, col=c(colors[1],colors[2],colors[3],colors[4])
,box.col = par("white")
)


#this is for 全国大会
#text(x=10,y=10, labels = "node=30")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")

 

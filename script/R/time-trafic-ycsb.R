#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-1200
ylimit <-25000000
colors <-colors()[c(30,50,60,90,100,120,130)]
pchs <- c(0,1)
#graph_title="Figure 5.1:The transition of network trafic per 10 seconds"
graph_title=""
xlab <- "time(s)"
ylab <- "traffic(Mbit/s)"

#data-file list
data_file_name <- c(
"/Users/shohei/c-packet/nodo_scale/node60/20110107230608/final_result_by_10",
"/Users/shohei/Desktop/a/node60/a.txt"
)
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
	plot(type="b",x[,c(1)],x[,c(2)],xlim= c(0,xlimit),ylim = c	(0,ylimit),yaxt="n",main=graph_title,xlab=xlab,ylab=ylab,cex.lab  = 1.8,cex.main = 1.4,cex.axis=1.8,
pch=pchs[counter],col=colors[length(data_file_name) - counter +1])

	#plot mean when being stable

	#specified overiding
	par(new=T)
	#abline(h=mean(x[c(20:40),c(2)]),col=colors[counter])	
	counter<-counter+1
}
axis(2,at=c(0,5000000,10000000,15000000,20000000,25000000),labels=c("0","5","10","15","20","25"),cex.axis=1.7)
legend(450,ylimit/5*4,legend=c("gossip only","yscb + gossip"),cex = 1.4,pch=c(1,0), col=c(colors[1],colors[2],colors[3],colors[4])
)


#this is for 全国大会
#text(x=10,y=10, labels = "node=30")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")

 

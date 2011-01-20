#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-600
ylimit <-5000000
colors <-colors()[c(30,50,60,90,100,120,130)]
pchs <- c(0,1,2,3)
#graph_title="Figure 5.1:The transition of network trafic per 10 seconds"
graph_title=""
xlab <- "time(s)"
ylab <- "traffic(Mbit/s)"

#data-file list
data_file_name <- c(
"/Users/shohei/Desktop/a/node120/20110108215222/final_result_by_10",
"/Users/shohei/Desktop/a/node120/20110120192140/final_result_by_10"
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
axis(2,at=c(0,1000000,2000000,3000000,4000000,5000000),labels=c("0","1","2","3","4","5"),cex.axis=1.7)
legend(400,ylimit/5*3,legend=c("2 machines","10  machines"),cex = 1.4
,pch=c(1,0), col=c(colors[1],colors[2],colors[3],colors[4])
)


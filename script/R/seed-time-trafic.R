#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-600
ylimit <-1200000
colors <-colors()[c(30,50,60,90,100,120,160,180,200,220)]
pchs <- c(0,1,2,3,4,5,6,7,8,9)
#graph_title="Figure 5.1:The transition of network trafic per 10 seconds"
graph_title=""
xlab <- "time(s)"
ylab <- "traffic(Mbit/s)"

#data-file list
data_file_name <- c(
"/Users/shohei/c-packet/seed/node120/20110202111900/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202113053/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202114309/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202115610/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202175356/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202175356/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202175356/final_result_by_10",
"/Users/shohei/c-packet/seed/node120/20110202153456/final_result_by_10"
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
	plot(type="b",x[,c(1)],x[,c(2)],xlim= c(0,xlimit),ylim = c	(0,ylimit),yaxt="n",main=graph_title,xlab=xlab,ylab=ylab
,cex = 1.5

,cex.lab  = 1.8,cex.main = 1.4,cex.axis=1.8,
pch=pchs[counter]
,col=colors[length(data_file_name) - counter +1]
)

	#plot mean when being stable

	#specified overiding
	par(new=T)
	#abline(h=mean(x[c(20:40),c(2)]),col=colors[counter])	
	counter<-counter+1
}
axis(2,at=c(0,200000,400000,600000,800000,1000000,1200000),labels=c("0","0.2","0.4","0.6","0.8","1","1.2"),cex.axis=1.7)
legend(450,ylimit/8*7,legend=c("seed=120", "seed=100", "seed=80",  "seed=60", "seed=40","seed=8","seed=4" ,"seed=2","seed=1"),cex = 1.4
,pch=c(7,6,5,4,3,2,1,0)
, col=c(colors[1],colors[2],colors[3],colors[4],colors[5],colors[6],colors[7],colors[8])
)


#this is for 全国大会
#text(x=10,y=10, labels = "node=30")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")

 

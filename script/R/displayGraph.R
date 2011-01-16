#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-60
ylimit <-32000000
colors <-colors()[c(10,20,30,40,50,60,70,80,90,100,120,130)]

#data-file list
data_file_name <- c(
"/Users/shohei/c-packet/nodo_scale/node30/20110107225603/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node60/20110107230608/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node90/20110107231619/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node120/20110107232631/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node150/20110107233712/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node180/20110107234754/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node210/20110107235836/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node240/20110108000948/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node270/20110108002100/final_result_by_10",
"/Users/shohei/c-packet/nodo_scale/node300/20110108003212/final_result_by_10"
)
graph_title="node*trafic"

#draw graph
counter<-1
while ( counter <=length(data_file_name)){
	if (counter != 1){
		#specified overiding
		par(new=T)
	}
	#read data
	x <- read.table(data_file_name[counter],sep=" ")
	#drawing
	plot(type="b",x[,c(1)],x[,c(2)],xlim= c(0,xlimit),ylim = c	(0,ylimit),main=graph_title,col=colors[counter])

	#plot mean when being stable

	#specified overiding
	par(new=T)
	abline(h=mean(x[c(20:40),c(2)]),col=colors[counter])	
	counter<-counter+1
}
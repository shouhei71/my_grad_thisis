#This Program is to import file and convert plot data to graph.

#set the variable
ylimit <-25000000
colors <-colors()[c(10,20,30,40,50,60,70,80,90,100,120,130)]
#graph_title="Figure 5.2:The relation between the number of Nodes and Network traffic"
graph_title=""
xlab <- "number of nodes"
ylab <- "traffic(Mbit/s)"
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
number <-c(30,60,90,120,150,180,210,240,270,300)
x <- c(5,10,20,30,60,120,150,180)
y <- c(6853355.52,7544036.88,8392936.88,8092095.04,8331419.107,8388789.173,8419198.512,8685764.973)

lengt(x)

plot(type="b",x,y,ylim = c(0,ylimit),xlim=c(0,200),yaxt="n",main=graph_title,ylab=ylab,xlab=xlab,cex.lab  = 1.8,cex.main = 1.2,cex.axis=1.8,pch=1,cex = 3.0)

axis(2,at=c(0,5000000,10000000,15000000,20000000,25000000,30000000),labels=c("0","5","10","15","20","25","30"),cex.axis=1.7)


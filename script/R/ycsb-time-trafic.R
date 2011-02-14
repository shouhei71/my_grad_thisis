#This Program is to import file and convert plot data to graph.

#set the variable
xlimit <-600
ylimit <-600000000
colors <-colors()[c(30,50,60,90,100,120,130)]
pchs <- c(0,1,2,3,4)
#graph_title="Figure 5.1:The transition of network trafic per 10 seconds"
graph_title=""
xlab <- "time(s)"
ylab <- "traffic(100Mbit/s)"
par_dir <- "/Users/shohei/ycsbtest/node120"
file_dir <- "20110125201856"
#data-file list
data_file_name <- c(
#sprintf("%s/%s/%s",par_dir,file_dir,"result_by_10_16"),
#sprintf("%s/%s/%s",par_dir,file_dir,"result_by_10_17"),
sprintf("%s/%s/%s",par_dir,file_dir,"result_by_10_18"),
sprintf("%s/%s/%s",par_dir,file_dir,"result_by_10_19"),
sprintf("%s/%s/%s",par_dir,file_dir,"result_by_10_20")
)
traffic_read_mean <-numeric(length(data_file_name))
traffic_gossip_mean <-numeric(length(data_file_name))
#fname()
#draw graph
counter<-1
while ( counter <=length(data_file_name)){
	#read data
	x <- read.table(data_file_name[counter],sep=" ")
	#y <- x[,c(2)] * 8 /10
	x[,c(1)] <- x[,c(1)] * 10
	y <-x[,c(2)]
	traffic_read_mean[counter] <- mean(y[60:70])
	traffic_gossip_mean[counter] <- mean(y[110:120])
	counter<-counter+1
	
	}
	
#axis(2,at=c(0,100000000,200000000,300000000,400000000,500000000),labels=c("0","1","2","3","4"),cex.axis=1.7)
#legend(450,ylimit/5*4,legend=c("lime20", "lime19","lime18","lime17","lime16"),cex = 1.4,pch=c(5,4,3,2,1,0), col=c(colors[1],colors[2],colors[3],colors[4]))

#traffic_write_mean <- traffic_write_mean - traffic_gossip_mean
traffic_read_mean <- traffic_read_mean - traffic_gossip_mean

traffic_read_sum<-0
counter <-1
while ( counter <=length(traffic_read_mean)){
	traffic_read_sum <- traffic_read_mean[counter] + traffic_read_sum
	counter <- counter + 1
}
traffic_read_sum
traffic_read_sum <- traffic_read_sum * length(traffic_read_mean) /  (length(traffic_read_mean) - 1)
#traffic_gossip_mean
traffic_read_mean
traffic_gossip_mean
traffic_read_sum


#this is for 全国大会
#text(x=10,y=10, labels = "node=30")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")
#text(x=1,y=1, labels = "node=133")

 

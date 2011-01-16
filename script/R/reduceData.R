#This program sum up the data ,which is anlyzed @each worker node.

#0.basic setting
args <- commandArgs()  # パラメータのベクトル
base_name <- "result_by_10"
file_home_directory <- args[5]
worker_ids_file <- sprintf("%s/worker_node_ids", file_home_directory)


#1.read each data
worker_node_ids <- read.table(worker_ids_file,sep=" ") 
counter<-1
while ( counter <=length(worker_node_ids)){
	file_name <- sprintf("%s/%s_%s", file_home_directory, base_name,worker_node_ids[counter])
	data <- read.table(file_name, sep="")
	if (counter == 1){
		packet_data <- data[,c(2)]
		output_vec <- cbind(packet_data)
	}else{
		packet_data <- numeric(nrow(output_vec))
		diff <- nrow(output_vec) - length(data[,c(2)])
		if(diff >= 0){
			packet_data <-packet_data + append(data[,c(2)],numeric(diff))  
		}else{
			packet_data <-head(data[,c(2)],n=nrow(output_vec))
		}
		output_vec <- cbind(output_vec ,packet_data)
	}
	#read data and covert into Vector.
	counter<-counter+1
}





#省略
#2.search for min(these date).the rest is not needed.


#3.sum up the vector

counter<-1
result_vec <- numeric(nrow(output_vec))
while ( counter <=ncol(output_vec)){
		result_vec <- result_vec + output_vec[,counter]
		counter<-counter+1
}
output_vec
result_vec


#4.output the final data.
index_max <-length(result_vec) -1
result <- cbind(0:index_max,result_vec)
file_name <- sprintf("%s/%s", file_home_directory, base_name)
result[1,]
fout <- file(file_name, "w") # ファイルを書き込みモードで開く(MSW 風指定)
for (i in 1:length(result_vec)) {
  	writeLines(paste(result[i,1],result[i,2]), fout)  # z を文字列としてテキスト(の一行として)に書き込み 
}
close(fout)  # ファイルを閉じる



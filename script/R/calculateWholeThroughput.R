#This program sum up the data ,which is anlyzed @each worker node.

#0.basic setting
base_name <- "result_by_10"
file_home_directory <- "/Users/shohei/Desktop/"
worker_ids_file <- sprintf("%s/worker_node_ids", file_home_directory)
output_name <- "final_result_by_10"
#1.read each data
worker_node_ids <- read.table(worker_ids_file,sep=" ") 
number_of_worker <- length(worker_node_ids)

file_name <- sprintf("%s%s", file_home_directory, base_name)
data <- read.table(file_name, sep="")
data[,c(2)] <- data[,c(2)] * (number_of_worker) / (number_of_worker - 1)

#4.output the final data.
file_name <- sprintf("%s%s", file_home_directory, output_name)
fout <- file(file_name, "w") # ファイルを書き込みモードで開く(MSW 風指定)
for (i in 1:length(data[,c(2)])) {
	data[c(i),]
  	writeLines(paste(data[c(i),1],data[c(i),2]), fout)  # z を文字列としてテキスト(の一行として)に書き込み 
}
close(fout)  # ファイルを閉じる

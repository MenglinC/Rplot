setwd("F://Rworkplace//coverage")
coverage<-read.table("coverage.txt",sep = "\t")
germline<-read.table("germline_mutations_hg19.txt",sep = "\t",header = T)
somatic<-read.table("somatic_mutations_hg19.txt",sep = "\t",header = T)
#可以利用merge函数来解决这件事情
germline$Tumor_add<-germline$Tumor_ref+germline$Tumor_alt
germline_sub<-subset(germline,select = c(Chr,Start,Tumor_add))
germline_sub<-within(germline_sub,Site<- paste(Chr,Start,sep="_"))
coverage<-within(coverage,Site<-paste(V1,V2,sep="_")) 
#将within和with弄混了，就产生了灭顶之灾
#有时间区分一下
germline_sub_coverage<-merge(germline_sub,coverage,by.x = "Site",by.y = "Site")
all_last<-subset(germline_sub_coverage,select = c(Site,Tumor_add,V4))
colnames(all_last)<-c("Site","tumor_sum","coverage")
all_last$minus<-all_last$tumor_sum-all_last$coverage

unpaired_sub_germline<-subset(all_last,minus!=0)

#######################################################################

somatic$Tumor_add<-somatic$Tumor_ref+somatic$Tumor_alt
somatic_sub<-subset(somatic,select = c(Chr,Start,Tumor_add))

somatic_sub<-within(somatic_sub,Site<- paste(Chr,Start,sep="_"))
coverage<-within(coverage,Site<-paste(V1,V2,sep="_")) 
#将within和with弄混了，就产生了灭顶之灾
#有时间区分一下
somatic_sub_coverage<-merge(somatic_sub,coverage,by.x = "Site",by.y = "Site")
all_last<-subset(somatic_sub_coverage,select = c(Site,Tumor_add,V4))
colnames(all_last)<-c("Site","tumor_sum","coverage")
all_last$minus<-all_last$tumor_sum-all_last$coverage

unpaired_sub_somatic<-subset(all_last,minus!=0)



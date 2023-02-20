library(enrichplot)
library(clusterProfiler)
library(org.Hs.eg.db) 
library(reshape2)
library(ggplot2)
data<-read.csv("agg.cons.mdf.csv")
data2 <- data %>% filter(
  (sign == "pos")
)
data3<-data2[,1:3]

data4<-dcast(data3,gene~cluster+region)
library(stringr)
celltypes<-unique(sapply(str_split(colnames(data4),"_",n=2),"[[",1))[2:18]
n=length(celltypes)
#skip<-c(5,7:9,12:17)
#skip<-c(2,9)
skip<-c(1,3,15,16)
for (i in skip) {
  cells<-celltypes[i]
  selDat<-data4[,c(1,grep(cells,colnames(data4)))]
  
  EG2Ensembl=toTable(org.Hs.egSYMBOL)
  Astro<-list(dlPFC=as.character(na.omit(merge(data.frame(symbol=selDat[which(selDat[,2]=="DFC"),1]),EG2Ensembl,by='symbol',all.x=T)$gene_id)),
              M1C=as.character(na.omit(merge(data.frame(symbol=selDat[which(selDat[,3]=="M1C"),1]),EG2Ensembl,by='symbol',all.x=T)$gene_id)),
              ACC=as.character(na.omit(merge(data.frame(symbol=selDat[which(selDat[,4]=="MFC"),1]),EG2Ensembl,by='symbol',all.x=T)$gene_id)),
              V1C=as.character(na.omit(merge(data.frame(symbol=selDat[which(selDat[,5]=="V1C"),1]),EG2Ensembl,by='symbol',all.x=T)$gene_id)))
  qcutoff<-0.05
  all1 <- compareCluster(Astro, fun="enrichGO",
                        OrgDb='org.Hs.eg.db', ont="ALL", qvalueCutoff=qcutoff)
  all2 <- simplify(all1,cutoff=0.5,by="p.adjust",select_fun=min) 
  
  all3 <- pairwise_termsim(all2)
  alln<-dim(all3@compareClusterResult)[1]
  p1 <- emapplot(all3,
                 legend_n=2,
                 node_label = "none",
                 color = "p.adjust",
                 layout = "nicely",
                 cex_label_category=1,
                 pie="equal",
                 cex_category=1,
                 cex_line=0.3,
                 showCategory = alln
  ) 
  #p2<-emapplot_cluster(all3,node_scale=1.5, layout="kk")+scale_fill_discrete(name = "groups") 
  #p3 <- emapplot(c3, pie="count")
  #cowplot::plot_grid(p1, p2,ncol=2,nrow=1,labels=c("A","B"))
  filenames<-paste(cells,"pdf",sep = "2.")
  ggsave(filenames,width =600,height=300,units="mm",device = "pdf",limitsize = FALSE)
	rm(Astro)
	rm(all1)
	rm(all2)
	rm(all3)
	rm(alln)
	rm(p1)
	rm(p2)
	rm(p3)
  
}
################################################################################
#先解决最简单的任务吧，统计这91个细胞各类型的突变的count数目


count_class<-function(file,cell){
setwd("F://Rworkplace//boxplot/germline")
cell_1<-read.table(file,sep = "\t",header = T)
#class_label<-table(cell_1$Func.refGene)


class_label<-as.data.frame(table(cell_1$Func.refGene))
class_exon<-as.data.frame(table(cell_1$ExonicFunc.refGene))
#chrM<-as.numeric(table(cell_1$Chr=="chrM")[2])
class_label[which(class_label$Var1=="intergenic"),2]
Other<-class_label[which(class_label$Var1=="intergenic"),2]+class_label[which(class_label$Var1=="intronic"),2]
chrM_Other<-data.frame(Var1=c("chrM","Other"),Freq=c(as.numeric(table(cell_1$Chr=="chrM")[2]),Other))
cell_var<-rbind(class_label,class_exon,chrM_Other)

cell_var_select<-cell_var[c(which(cell_var$Var1=="chrM"),
                            which(cell_var$Var1=="frameshift substitution"),
                            which(cell_var$Var1=="nonframeshift substitution"),
                            which(cell_var$Var1=="nonsynonymous SNV"),
                            which(cell_var$Var1=="synonymous SNV"),
                            which(cell_var$Var1=="UTR3"),
                            which(cell_var$Var1=="UTR5"),
                            which(cell_var$Var1=="Other")),]
cell<-rep(cell,dim(cell_var_select)[1])
cell_last_var_select<-cbind(cell,cell_var_select)


}

######################1-10########################################
cell1<-count_class("1-germline_mutations_hg38.txt","cell1")
cell2<-count_class("2-germline_mutations_hg38.txt","cell2")
cell3<-count_class("3-germline_mutations_hg38.txt","cell3")
cell4<-count_class("4-germline_mutations_hg38.txt","cell4")
cell5<-count_class("5-germline_mutations_hg38.txt","cell5")


cell6<-count_class("6-germline_mutations_hg38.txt","cell6")
cell7<-count_class("7-germline_mutations_hg38.txt","cell7")
cell8<-count_class("8-germline_mutations_hg38.txt","cell8")
cell9<-count_class("9-germline_mutations_hg38.txt","cell9")
cell10<-count_class("10-germline_mutations_hg38.txt","cell10")

######################11-20########################################
cell11<-count_class("11-germline_mutations_hg38.txt","cell11")
cell12<-count_class("12-germline_mutations_hg38.txt","cell12")
cell13<-count_class("13-germline_mutations_hg38.txt","cell13")
cell14<-count_class("14-germline_mutations_hg38.txt","cell14")
cell15<-count_class("15-germline_mutations_hg38.txt","cell15")
cell16<-count_class("16-germline_mutations_hg38.txt","cell16")
cell17<-count_class("17-germline_mutations_hg38.txt","cell17")
cell18<-count_class("18-germline_mutations_hg38.txt","cell18")
cell19<-count_class("19-germline_mutations_hg38.txt","cell19")
cell20<-count_class("20-germline_mutations_hg38.txt","cell20")

###################################################################
cell21<-count_class("21-germline_mutations_hg38.txt","cell21")
cell22<-count_class("22-germline_mutations_hg38.txt","cell22")
cell23<-count_class("23-germline_mutations_hg38.txt","cell23")
cell24<-count_class("24-germline_mutations_hg38.txt","cell24")
cell25<-count_class("25-germline_mutations_hg38.txt","cell25")
cell26<-count_class("26-germline_mutations_hg38.txt","cell26")
cell27<-count_class("27-germline_mutations_hg38.txt","cell27")
cell28<-count_class("28-germline_mutations_hg38.txt","cell28")
cell29<-count_class("29-germline_mutations_hg38.txt","cell29")
cell30<-count_class("30-germline_mutations_hg38.txt","cell30")

##################################################################
cell31<-count_class("31-germline_mutations_hg38.txt","cell31")
cell32<-count_class("32-germline_mutations_hg38.txt","cell32")
cell33<-count_class("33-germline_mutations_hg38.txt","cell33")
cell34<-count_class("34-germline_mutations_hg38.txt","cell34")
cell35<-count_class("35-germline_mutations_hg38.txt","cell35")

cell36<-count_class("36-germline_mutations_hg38.txt","cell36")

cell37<-count_class("37-germline_mutations_hg38.txt","cell37")
cell38<-count_class("38-germline_mutations_hg38.txt","cell38")
cell39<-count_class("39-germline_mutations_hg38.txt","cell39")
cell40<-count_class("40-germline_mutations_hg38.txt","cell40")

#################################################################
cell41<-count_class("41-germline_mutations_hg38.txt","cell41")
cell42<-count_class("42-germline_mutations_hg38.txt","cell42")
cell43<-count_class("43-germline_mutations_hg38.txt","cell43")
cell44<-count_class("44-germline_mutations_hg38.txt","cell44")
cell45<-count_class("45-germline_mutations_hg38.txt","cell45")
cell46<-count_class("46-germline_mutations_hg38.txt","cell46")
cell47<-count_class("47-germline_mutations_hg38.txt","cell47")
cell48<-count_class("48-germline_mutations_hg38.txt","cell48")
cell49<-count_class("49-germline_mutations_hg38.txt","cell49")
cell50<-count_class("50-germline_mutations_hg38.txt","cell50")

################################################################
cell51<-count_class("51-germline_mutations_hg38.txt","cell51")
cell52<-count_class("52-germline_mutations_hg38.txt","cell52")
cell53<-count_class("53-germline_mutations_hg38.txt","cell53")
cell54<-count_class("54-germline_mutations_hg38.txt","cell54")
cell55<-count_class("55-germline_mutations_hg38.txt","cell55")
cell56<-count_class("56-germline_mutations_hg38.txt","cell56")
cell57<-count_class("57-germline_mutations_hg38.txt","cell57")
cell58<-count_class("58-germline_mutations_hg38.txt","cell58")
cell59<-count_class("59-germline_mutations_hg38.txt","cell59")

cell60<-count_class("60-germline_mutations_hg38.txt","cell60")

cell61<-count_class("61-germline_mutations_hg38.txt","cell61")
cell62<-count_class("62-germline_mutations_hg38.txt","cell62")
cell63<-count_class("63-germline_mutations_hg38.txt","cell63")
cell64<-count_class("64-germline_mutations_hg38.txt","cell64")
#cell65<-count_class("65-germline_mutations_hg38.txt","cell65")
cell66<-count_class("66-germline_mutations_hg38.txt","cell66")
cell67<-count_class("67-germline_mutations_hg38.txt","cell67")
cell68<-count_class("68-germline_mutations_hg38.txt","cell68")
cell69<-count_class("69-germline_mutations_hg38.txt","cell69")
cell70<-count_class("70-germline_mutations_hg38.txt","cell70")

cell71<-count_class("71-germline_mutations_hg38.txt","cell71")
cell72<-count_class("72-germline_mutations_hg38.txt","cell72")
cell73<-count_class("73-germline_mutations_hg38.txt","cell73")
cell74<-count_class("74-germline_mutations_hg38.txt","cell74")
cell75<-count_class("75-germline_mutations_hg38.txt","cell75")
cell76<-count_class("76-germline_mutations_hg38.txt","cell76")
cell77<-count_class("77-germline_mutations_hg38.txt","cell77")
cell78<-count_class("78-germline_mutations_hg38.txt","cell78")
cell79<-count_class("79-germline_mutations_hg38.txt","cell79")
cell80<-count_class("80-germline_mutations_hg38.txt","cell80")


cell81<-count_class("81-germline_mutations_hg38.txt","cell81")
cell82<-count_class("82-germline_mutations_hg38.txt","cell82")
cell83<-count_class("83-germline_mutations_hg38.txt","cell83")
cell84<-count_class("84-germline_mutations_hg38.txt","cell84")
cell85<-count_class("85-germline_mutations_hg38.txt","cell85")
cell86<-count_class("86-germline_mutations_hg38.txt","cell86")
cell87<-count_class("87-germline_mutations_hg38.txt","cell87")
cell88<-count_class("88-germline_mutations_hg38.txt","cell88")
cell89<-count_class("89-germline_mutations_hg38.txt","cell89")
cell90<-count_class("90-germline_mutations_hg38.txt","cell90")

cell_count<-rbind(cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8,cell9,cell10,
                  cell11,cell12,cell13,cell14,cell15,cell16,cell17,cell18,cell19,cell20,
                  cell21,cell22,cell23,cell24,cell25,cell26,cell27,cell28,cell29,cell30,
                  cell31,cell32,cell33,cell34,cell35,cell36,cell37,cell38,cell39,cell40,
                  cell41,cell42,cell43,cell44,cell45,cell46,cell47,cell48,cell49,cell50,
                  cell51,cell52,cell53,cell54,cell55,cell56,cell57,cell58,cell59,cell60,
                  cell61,cell62,cell63,cell64,cell66,cell67,cell68,cell69,cell70,
                  cell71,cell72,cell73,cell74,cell75,cell76,cell77,cell78,cell79,cell80,
                  cell81,cell82,cell83,cell84,cell85,cell86,cell87,cell88,cell89,cell90)
#缺65
#boxplot(Freq~Var1,cell_count) #注意两参数的位置
#感觉有点问题
#cell_count$Var1
#table(cell_count$Var1)
cell_count$Var1<-droplevels(cell_count$Var1)
table(cell_count$Var1)
cell_count$Var1 <- factor(cell_count$Var1, levels = c("chrM", "frameshift substitution", "nonframeshift substitution","nonsynonymous SNV","synonymous SNV","UTR5","UTR3","Other"))
boxplot(Freq~Var1,cell_count)
library(ggplot2)
p<-ggplot(cell_count,aes(x=Var1,y=Freq))+geom_boxplot()+theme(axis.text.x = element_text(angle=15, hjust = 0.5,vjust=1,size = 7),plot.margin = unit(c(1,2,1,2),"cm"))
p1<-p+ylab("Count(variants)")+xlab(NULL)
p1

write.table(cell_count,"cell_count_germline.txt",sep = "\t",quote = F,col.names = F)


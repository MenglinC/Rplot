

avg<-function(file,cell_number){
setwd("F://Rworkplace//boxplot/germline")
cell<-read.table(file,sep = "\t",header = T)
dim(cell)

for (i in 1:dim(cell)[1]){
  
  cell$VAF[i]<-as.numeric(cell$Tumor_alt[i])/(as.numeric(cell$Tumor_ref[i])+as.numeric(cell$Tumor_alt[i]))
  
}
dim(cell)

chrM<-subset(cell,cell$Chr=="chrM")
average0<-mean(chrM$VAF)
frameshift_substitution<-subset(cell,cell$ExonicFunc.refGene=="frameshift substitution")
average1<-mean(frameshift_substitution$VAF)
nonframeshift_substitution<-subset(cell,cell$ExonicFunc.refGene=="nonframeshift substitution")
average2<-mean(nonframeshift_substitution$VAF)
nonsynonymous_SNV<-subset(cell,cell$ExonicFunc.refGene=="nonsynonymous SNV")
average3<-mean(nonsynonymous_SNV$VAF)
synonymous_SNV<-subset(cell,cell$ExonicFunc.refGene=="synonymous SNV")
average4<-mean(synonymous_SNV$VAF)
UTR5<-subset(cell,cell$Func.refGene=="UTR5")
average5<-mean(UTR5$VAF)
UTR3<-subset(cell,cell$Func.refGene=="UTR3")
average6<-mean(UTR3$VAF)

last_var<-data.frame(label=c("chrM","frameshift substitution","nonframeshift substitution","nonsynonymous SNV","synonymous SNV","UTR5","UTR3"),
                        average=c(average0,average1,average2,average3,average4,average5,average6))

cell<-rep(cell_number,dim(last_var)[1])
last_var_all<-cbind(cell,last_var)

}

cell1<-avg("1-germline_mutations_hg38.txt","cell1")

cell2<-avg("2-germline_mutations_hg38.txt","cell2")
cell3<-avg("3-germline_mutations_hg38.txt","cell3")
cell4<-avg("4-germline_mutations_hg38.txt","cell4")
cell5<-avg("5-germline_mutations_hg38.txt","cell5")


cell6<-avg("6-germline_mutations_hg38.txt","cell6")
cell7<-avg("7-germline_mutations_hg38.txt","cell7")
cell8<-avg("8-germline_mutations_hg38.txt","cell8")
cell9<-avg("9-germline_mutations_hg38.txt","cell9")
cell10<-avg("10-germline_mutations_hg38.txt","cell10")

######################11-20########################################
cell11<-avg("11-germline_mutations_hg38.txt","cell11")
cell12<-avg("12-germline_mutations_hg38.txt","cell12")
cell13<-avg("13-germline_mutations_hg38.txt","cell13")
cell14<-avg("14-germline_mutations_hg38.txt","cell14")
cell15<-avg("15-germline_mutations_hg38.txt","cell15")
cell16<-avg("16-germline_mutations_hg38.txt","cell16")
cell17<-avg("17-germline_mutations_hg38.txt","cell17")
cell18<-avg("18-germline_mutations_hg38.txt","cell18")
cell19<-avg("19-germline_mutations_hg38.txt","cell19")
cell20<-avg("20-germline_mutations_hg38.txt","cell20")

###################################################################
cell21<-avg("21-germline_mutations_hg38.txt","cell21")
cell22<-avg("22-germline_mutations_hg38.txt","cell22")
cell23<-avg("23-germline_mutations_hg38.txt","cell23")
cell24<-avg("24-germline_mutations_hg38.txt","cell24")
cell25<-avg("25-germline_mutations_hg38.txt","cell25")
cell26<-avg("26-germline_mutations_hg38.txt","cell26")
cell27<-avg("27-germline_mutations_hg38.txt","cell27")
cell28<-avg("28-germline_mutations_hg38.txt","cell28")
cell29<-avg("29-germline_mutations_hg38.txt","cell29")
cell30<-avg("30-germline_mutations_hg38.txt","cell30")

##################################################################
cell31<-avg("31-germline_mutations_hg38.txt","cell31")
cell32<-avg("32-germline_mutations_hg38.txt","cell32")
cell33<-avg("33-germline_mutations_hg38.txt","cell33")
cell34<-avg("34-germline_mutations_hg38.txt","cell34")
cell35<-avg("35-germline_mutations_hg38.txt","cell35")

cell36<-avg("36-germline_mutations_hg38.txt","cell36")

cell37<-avg("37-germline_mutations_hg38.txt","cell37")
cell38<-avg("38-germline_mutations_hg38.txt","cell38")
cell39<-avg("39-germline_mutations_hg38.txt","cell39")
cell40<-avg("40-germline_mutations_hg38.txt","cell40")

#################################################################
cell41<-avg("41-germline_mutations_hg38.txt","cell41")
cell42<-avg("42-germline_mutations_hg38.txt","cell42")
cell43<-avg("43-germline_mutations_hg38.txt","cell43")
cell44<-avg("44-germline_mutations_hg38.txt","cell44")
cell45<-avg("45-germline_mutations_hg38.txt","cell45")
cell46<-avg("46-germline_mutations_hg38.txt","cell46")
cell47<-avg("47-germline_mutations_hg38.txt","cell47")
cell48<-avg("48-germline_mutations_hg38.txt","cell48")
cell49<-avg("49-germline_mutations_hg38.txt","cell49")
cell50<-avg("50-germline_mutations_hg38.txt","cell50")

################################################################
cell51<-avg("51-germline_mutations_hg38.txt","cell51")
cell52<-avg("52-germline_mutations_hg38.txt","cell52")
cell53<-avg("53-germline_mutations_hg38.txt","cell53")
cell54<-avg("54-germline_mutations_hg38.txt","cell54")
cell55<-avg("55-germline_mutations_hg38.txt","cell55")
cell56<-avg("56-germline_mutations_hg38.txt","cell56")
cell57<-avg("57-germline_mutations_hg38.txt","cell57")
cell58<-avg("58-germline_mutations_hg38.txt","cell58")
cell59<-avg("59-germline_mutations_hg38.txt","cell59")

cell60<-avg("60-germline_mutations_hg38.txt","cell60")

cell61<-avg("61-germline_mutations_hg38.txt","cell61")
cell62<-avg("62-germline_mutations_hg38.txt","cell62")
cell63<-avg("63-germline_mutations_hg38.txt","cell63")
cell64<-avg("64-germline_mutations_hg38.txt","cell64")
#cell65<-avg("65-germline_mutations_hg38.txt","cell65")
cell66<-avg("66-germline_mutations_hg38.txt","cell66")
cell67<-avg("67-germline_mutations_hg38.txt","cell67")
cell68<-avg("68-germline_mutations_hg38.txt","cell68")
cell69<-avg("69-germline_mutations_hg38.txt","cell69")
cell70<-avg("70-germline_mutations_hg38.txt","cell70")

cell71<-avg("71-germline_mutations_hg38.txt","cell71")
cell72<-avg("72-germline_mutations_hg38.txt","cell72")
cell73<-avg("73-germline_mutations_hg38.txt","cell73")
cell74<-avg("74-germline_mutations_hg38.txt","cell74")
cell75<-avg("75-germline_mutations_hg38.txt","cell75")
cell76<-avg("76-germline_mutations_hg38.txt","cell76")
cell77<-avg("77-germline_mutations_hg38.txt","cell77")
cell78<-avg("78-germline_mutations_hg38.txt","cell78")
cell79<-avg("79-germline_mutations_hg38.txt","cell79")
cell80<-avg("80-germline_mutations_hg38.txt","cell80")


cell81<-avg("81-germline_mutations_hg38.txt","cell81")
cell82<-avg("82-germline_mutations_hg38.txt","cell82")
cell83<-avg("83-germline_mutations_hg38.txt","cell83")
cell84<-avg("84-germline_mutations_hg38.txt","cell84")
cell85<-avg("85-germline_mutations_hg38.txt","cell85")
cell86<-avg("86-germline_mutations_hg38.txt","cell86")
cell87<-avg("87-germline_mutations_hg38.txt","cell87")
cell88<-avg("88-germline_mutations_hg38.txt","cell88")
cell89<-avg("89-germline_mutations_hg38.txt","cell89")
cell90<-avg("90-germline_mutations_hg38.txt","cell90")

cell_count<-rbind(cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8,cell9,cell10,
                  cell11,cell12,cell13,cell14,cell15,cell16,cell17,cell18,cell19,cell20,
                  cell21,cell22,cell23,cell24,cell25,cell26,cell27,cell28,cell29,cell30,
                  cell31,cell32,cell33,cell34,cell35,cell36,cell37,cell38,cell39,cell40,
                  cell41,cell42,cell43,cell44,cell45,cell46,cell47,cell48,cell49,cell50,
                  cell51,cell52,cell53,cell54,cell55,cell56,cell57,cell58,cell59,cell60,
                  cell61,cell62,cell63,cell64,cell66,cell67,cell68,cell69,cell70,
                  cell71,cell72,cell73,cell74,cell75,cell76,cell77,cell78,cell79,cell80,
                  cell81,cell82,cell83,cell84,cell85,cell86,cell87,cell88,cell89,cell90)
#ȱ65


cell_count[is.na(cell_count)]<-0

#cell_count$label<-droplevels(cell_count$label)
table(cell_count$label)
library(ggplot2)
p<-ggplot(cell_count,aes(x=label,y=average))+geom_boxplot()+theme(axis.text.x = element_text(angle=15, hjust = 0.5,vjust=1,size = 7),plot.margin = unit(c(1,2,1,2),"cm"))
p1<-p+ylab("Average(variants)")+xlab(NULL)
p1

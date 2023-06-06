

VAR<-function(file,cell_number){
  setwd("F://Rworkplace//boxplot/germline")
  cell<-read.table(file,sep = "\t",header = T)
  dim(cell)
  
  for (i in 1:dim(cell)[1]){
    
    cell$VAF[i]<-as.numeric(cell$Tumor_alt[i])/(as.numeric(cell$Tumor_ref[i])+as.numeric(cell$Tumor_alt[i]))
    
  }
  dim(cell)
  
  chrM<-subset(cell,cell$Chr=="chrM")
  var0<-var(chrM$VAF)
  frameshift_substitution<-subset(cell,cell$ExonicFunc.refGene=="frameshift substitution")
  var1<-var(frameshift_substitution$VAF)
  nonframeshift_substitution<-subset(cell,cell$ExonicFunc.refGene=="nonframeshift substitution")
  var2<-var(nonframeshift_substitution$VAF)
  nonsynonymous_SNV<-subset(cell,cell$ExonicFunc.refGene=="nonsynonymous SNV")
  var3<-var(nonsynonymous_SNV$VAF)
  synonymous_SNV<-subset(cell,cell$ExonicFunc.refGene=="synonymous SNV")
  var4<-var(synonymous_SNV$VAF)
  UTR5<-subset(cell,cell$Func.refGene=="UTR5")
  var5<-var(UTR5$VAF)
  UTR3<-subset(cell,cell$Func.refGene=="UTR3")
  var6<-var(UTR3$VAF)
  
  last_var<-data.frame(label=c("chrM","frameshift substitution","nonframeshift substitution","nonsynonymous SNV","synonymous SNV","UTR5","UTR3"),
                       va=c(var0,var1,var2,var3,var4,var5,var6))
  
  cell<-rep(cell_number,dim(last_var)[1])
  last_var_all<-cbind(cell,last_var)
  
}

cell1<-VAR("1-germline_mutations_hg38.txt","cell1")

cell2<-VAR("2-germline_mutations_hg38.txt","cell2")
cell3<-VAR("3-germline_mutations_hg38.txt","cell3")
cell4<-VAR("4-germline_mutations_hg38.txt","cell4")
cell5<-VAR("5-germline_mutations_hg38.txt","cell5")


cell6<-VAR("6-germline_mutations_hg38.txt","cell6")
cell7<-VAR("7-germline_mutations_hg38.txt","cell7")
cell8<-VAR("8-germline_mutations_hg38.txt","cell8")
cell9<-VAR("9-germline_mutations_hg38.txt","cell9")
cell10<-VAR("10-germline_mutations_hg38.txt","cell10")

######################11-20########################################
cell11<-VAR("11-germline_mutations_hg38.txt","cell11")
cell12<-VAR("12-germline_mutations_hg38.txt","cell12")
cell13<-VAR("13-germline_mutations_hg38.txt","cell13")
cell14<-VAR("14-germline_mutations_hg38.txt","cell14")
cell15<-VAR("15-germline_mutations_hg38.txt","cell15")
cell16<-VAR("16-germline_mutations_hg38.txt","cell16")
cell17<-VAR("17-germline_mutations_hg38.txt","cell17")
cell18<-VAR("18-germline_mutations_hg38.txt","cell18")
cell19<-VAR("19-germline_mutations_hg38.txt","cell19")
cell20<-VAR("20-germline_mutations_hg38.txt","cell20")

###################################################################
cell21<-VAR("21-germline_mutations_hg38.txt","cell21")
cell22<-VAR("22-germline_mutations_hg38.txt","cell22")
cell23<-VAR("23-germline_mutations_hg38.txt","cell23")
cell24<-VAR("24-germline_mutations_hg38.txt","cell24")
cell25<-VAR("25-germline_mutations_hg38.txt","cell25")
cell26<-VAR("26-germline_mutations_hg38.txt","cell26")
cell27<-VAR("27-germline_mutations_hg38.txt","cell27")
cell28<-VAR("28-germline_mutations_hg38.txt","cell28")
cell29<-VAR("29-germline_mutations_hg38.txt","cell29")
cell30<-VAR("30-germline_mutations_hg38.txt","cell30")

##################################################################
cell31<-VAR("31-germline_mutations_hg38.txt","cell31")
cell32<-VAR("32-germline_mutations_hg38.txt","cell32")
cell33<-VAR("33-germline_mutations_hg38.txt","cell33")
cell34<-VAR("34-germline_mutations_hg38.txt","cell34")
cell35<-VAR("35-germline_mutations_hg38.txt","cell35")

cell36<-VAR("36-germline_mutations_hg38.txt","cell36")

cell37<-VAR("37-germline_mutations_hg38.txt","cell37")
cell38<-VAR("38-germline_mutations_hg38.txt","cell38")
cell39<-VAR("39-germline_mutations_hg38.txt","cell39")
cell40<-VAR("40-germline_mutations_hg38.txt","cell40")

#################################################################
cell41<-VAR("41-germline_mutations_hg38.txt","cell41")
cell42<-VAR("42-germline_mutations_hg38.txt","cell42")
cell43<-VAR("43-germline_mutations_hg38.txt","cell43")
cell44<-VAR("44-germline_mutations_hg38.txt","cell44")
cell45<-VAR("45-germline_mutations_hg38.txt","cell45")
cell46<-VAR("46-germline_mutations_hg38.txt","cell46")
cell47<-VAR("47-germline_mutations_hg38.txt","cell47")
cell48<-VAR("48-germline_mutations_hg38.txt","cell48")
cell49<-VAR("49-germline_mutations_hg38.txt","cell49")
cell50<-VAR("50-germline_mutations_hg38.txt","cell50")

################################################################
cell51<-VAR("51-germline_mutations_hg38.txt","cell51")
cell52<-VAR("52-germline_mutations_hg38.txt","cell52")
cell53<-VAR("53-germline_mutations_hg38.txt","cell53")
cell54<-VAR("54-germline_mutations_hg38.txt","cell54")
cell55<-VAR("55-germline_mutations_hg38.txt","cell55")
cell56<-VAR("56-germline_mutations_hg38.txt","cell56")
cell57<-VAR("57-germline_mutations_hg38.txt","cell57")
cell58<-VAR("58-germline_mutations_hg38.txt","cell58")
cell59<-VAR("59-germline_mutations_hg38.txt","cell59")

cell60<-VAR("60-germline_mutations_hg38.txt","cell60")

cell61<-VAR("61-germline_mutations_hg38.txt","cell61")
cell62<-VAR("62-germline_mutations_hg38.txt","cell62")
cell63<-VAR("63-germline_mutations_hg38.txt","cell63")
cell64<-VAR("64-germline_mutations_hg38.txt","cell64")
#cell65<-VAR("65-germline_mutations_hg38.txt","cell65")
cell66<-VAR("66-germline_mutations_hg38.txt","cell66")
cell67<-VAR("67-germline_mutations_hg38.txt","cell67")
cell68<-VAR("68-germline_mutations_hg38.txt","cell68")
cell69<-VAR("69-germline_mutations_hg38.txt","cell69")
cell70<-VAR("70-germline_mutations_hg38.txt","cell70")

cell71<-VAR("71-germline_mutations_hg38.txt","cell71")
cell72<-VAR("72-germline_mutations_hg38.txt","cell72")
cell73<-VAR("73-germline_mutations_hg38.txt","cell73")
cell74<-VAR("74-germline_mutations_hg38.txt","cell74")
cell75<-VAR("75-germline_mutations_hg38.txt","cell75")
cell76<-VAR("76-germline_mutations_hg38.txt","cell76")
cell77<-VAR("77-germline_mutations_hg38.txt","cell77")
cell78<-VAR("78-germline_mutations_hg38.txt","cell78")
cell79<-VAR("79-germline_mutations_hg38.txt","cell79")
cell80<-VAR("80-germline_mutations_hg38.txt","cell80")


cell81<-VAR("81-germline_mutations_hg38.txt","cell81")
cell82<-VAR("82-germline_mutations_hg38.txt","cell82")
cell83<-VAR("83-germline_mutations_hg38.txt","cell83")
cell84<-VAR("84-germline_mutations_hg38.txt","cell84")
cell85<-VAR("85-germline_mutations_hg38.txt","cell85")
cell86<-VAR("86-germline_mutations_hg38.txt","cell86")
cell87<-VAR("87-germline_mutations_hg38.txt","cell87")
cell88<-VAR("88-germline_mutations_hg38.txt","cell88")
cell89<-VAR("89-germline_mutations_hg38.txt","cell89")
cell90<-VAR("90-germline_mutations_hg38.txt","cell90")

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
p<-ggplot(cell_count,aes(x=label,y=va))+geom_boxplot()+theme(axis.text.x = element_text(angle=15, hjust = 0.5,vjust=1,size = 7),plot.margin = unit(c(1,2,1,2),"cm"))
p1<-p+ylab("Var(variants)")+xlab(NULL)
p1

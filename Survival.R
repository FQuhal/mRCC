library(meta)
library(netmeta)
dr<- read.csv(file.choose())
drr<-netmeta(HRTr, SETrl, Trl, TrP, author, data = dr,sm="HR")
drr
menetmeta <- netmetabin(drr)
netgraph(drr,scale = 0.80,col = "black",lwd=5,thickness = "number.of.studies",
         ,multiarm=TRUE,points=TRUE,
       col.points="black",cex.points=5,number.of.studies = TRUE)
tiff(file=" "C:\Users\Lenovo\Desktop\net adverse" ", width =1600, height =1800,res=180)
forest(drr,col.random = "black",col.square = "black",col.diamond = "black",ref="Sunitinib")
dev.off()
netrank(drr)
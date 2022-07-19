
RowNames<- data.matrix(Rows, rownames.force = NA)
rowname <- as.numeric(RowNames) 
TN <- 0
TP <- 0
FN <- 0
FP <- 0

for(i in 1:189)
{
for(testandave in 1:1682)
{
if(k[i]==1){
if(Test[i,testandave] > 4 && ave1[1,testandave] > 4 && Test[i,testandave]!=0)
{
TP <- TP + 1
}
else if(Test[i,testandave]<=4 && ave1[1,testandave]<=4 && Test[i,testandave]!=0)
{
TN <- TN + 1
}
else if(Test[i,testandave]>4 && ave1[1,testandave]<=4 && Test[i,testandave]!=0)
{
FN <- FN + 1
}
else if(Test[i,testandave] <= 4 && ave1[1,testandave]>4 && Test[i,testandave]!=0)
{
FP <- FP+1
}
}

else if(k[i]==2){

if(Test[i,testandave] > 4 && ave2[1,testandave] > 4 && Test[i,testandave]!=0)
{
TP <- TP + 1
}
else if(Test[i,testandave]<=4 && ave2[1,testandave]<=4 && Test[i,testandave]!=0)
{
TN <- TN + 1
}
else if(Test[i,testandave]>4 && ave2[1,testandave]<=4 && Test[i,testandave]!=0)
{
FN <- FN + 1
}
else if(Test[i,testandave] <= 4 && ave2[1,testandave]>4 && Test[i,testandave]!=0)
{
FP <- FP+1
}
}


else if(k[i]==3){
	
if(Test[i,testandave] > 4 && ave3[1,testandave] > 4 && Test[i,testandave]!=0)
{
TP <- TP + 1
}
else if(Test[i,testandave]<=4 && ave3[1,testandave]<=4 && Test[i,testandave]!=0)
{
TN <- TN + 1
}
else if(Test[i,testandave]>4 && ave3[1,testandave]<=4 && Test[i,testandave]!=0)
{
FN <- FN + 1
}
else if(Test[i,testandave] <= 4 && ave3[1,testandave]>4 && Test[i,testandave]!=0)
{
FP <- FP+1
}
}

}
}


TP
FN
FP
TN

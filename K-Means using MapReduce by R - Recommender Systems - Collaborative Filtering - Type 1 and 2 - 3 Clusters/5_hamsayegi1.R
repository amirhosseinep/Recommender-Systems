clsLine1 <- 0
clsLine2 <- 0
clsLine3 <- 0
for( TRCLS1 in 1:754)
{
if(idx[1,TRCLS1]==1)
{
clsLine1 <- clsLine1+1
}
else if(idx[1,TRCLS1]==2)
{
clsLine2 <- clsLine2+1
}
else if(idx[1,TRCLS1]==3)
{
clsLine3 <- clsLine3+1
}
}
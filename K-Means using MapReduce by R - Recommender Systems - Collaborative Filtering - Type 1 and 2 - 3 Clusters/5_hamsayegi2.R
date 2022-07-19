cls1 <- 0
cls2 <- 0
cls3 <- 0
ClusterOne <- matrix(, nrow = clsLine1 , ncol = 1)
ClusterTwo <- matrix(, nrow = clsLine2 , ncol = 1)
ClusterThree <- matrix(, nrow = clsLine3 , ncol = 1)
for( TRCLS in 1:754)
{
if(idx[1,TRCLS]==1)
{
cls1 <- cls1+1
ClusterOne[cls1,1] <- TRCLS
}

else if(idx[1,TRCLS]==2)
{

cls2 <- cls2+1
ClusterTwo[cls2,1] <- TRCLS
}
else if(idx[1,TRCLS]==3)
{

cls3 <- cls3+1
ClusterThree[cls3,1] <- TRCLS
}
}
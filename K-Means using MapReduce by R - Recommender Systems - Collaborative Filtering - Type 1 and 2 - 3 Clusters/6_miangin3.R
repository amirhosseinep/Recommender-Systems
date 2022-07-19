ave3 <- matrix(, nrow = 1 , ncol = 1682)

for(allrank3 in 1:1682)
{
c <- 0
sum <- 0
for(i in 1:clsLine3)
{
	index <- ClusterThree[i,1]
	if (P[index,allrank3]!=0)
		{
			c=c+1
			sum <- P[index,allrank3] + sum
		}
	

}
if(c==0)
{
ave3[1,allrank3] <- 0
}
else
{
ave3[1,allrank3] <- sum/c
ave3[1,allrank3]=round(ave3[1,allrank3],digits=0)
}
}
ave3

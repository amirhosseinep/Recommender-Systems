ave1 <- matrix(, nrow = 1 , ncol = 1682)

for(allrank1 in 1:1682)
{
c <- 0
sum <- 0
for(i in 1:clsLine1)
{
	index <- ClusterOne[i,1]
	if (P[index,allrank1]!=0)
		{
			c=c+1
			sum <- P[index,allrank1] + sum
		}
	

}
if(c==0)
{
ave1[1,allrank1] <- 0
}
else
{
ave1[1,allrank1] <- sum/c
ave1[1,allrank1]=round(ave1[1,allrank1],digits=0)
}
}
ave1

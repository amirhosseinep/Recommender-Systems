ave2 <- matrix(, nrow = 1 , ncol = 1682)

for(allrank2 in 1:1682)
{
c <- 0
sum <- 0
for(i in 1:clsLine2)
{
	index <- ClusterTwo[i,1]
	if (P[index,allrank2]!=0)
		{
			c=c+1
			sum <- P[index,allrank2] + sum
		}
	

}
if(c==0)
{
ave2[1,allrank2] <- 0
}
else
{
ave2[1,allrank2] <- sum/c
ave2[1,allrank2]=round(ave2[1,allrank2],digits=0)
}
}
ave2

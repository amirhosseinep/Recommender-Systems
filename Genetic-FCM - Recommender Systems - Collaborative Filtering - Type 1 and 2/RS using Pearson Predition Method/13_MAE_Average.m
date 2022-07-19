counter=0;
summ=0;
for i= 1:189
for testandave = 1:1682
   if(ClusterNumber(i,1)==1)
        summ=summ+(ave1 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==2)
        summ=summ+(ave2 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
        
   elseif(ClusterNumber(i,1)==3)
        summ=summ+(ave3 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==4)
        summ=summ+(ave4 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==5)
        summ=summ+(ave5 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==6)
        summ=summ+(ave6 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==7)
        summ=summ+(ave7 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==8)
        summ=summ+(ave8 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   elseif(ClusterNumber(i,1)==9)
        summ=summ+(ave9 (1,testandave)- datatest(i,testandave));
        counter=counter+1;
   end
end
end
MAE1=summ/counter
RMSE1=sqrt(MAE1)
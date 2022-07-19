for i=1:189
   for j=1:1682
       sum1=0;
       sum2=0;
       if(ClusterNumber(i)==1)
        for k=1:cls1
           if (ClusterOneData(k,j)~=0 && Pearsonsim1(k,1)>0 )
              sum1=sum1+(Pearsonsim1(k,1)*(ClusterOneData(k,j)-Train1AvePerUser(k,1))); 
              sum2=sum2+Pearsonsim1(k,1);
           end
       end
       avg(i,j)=TestAvePerUser(i,1)+(sum1/sum2); 
       end
       if(ClusterNumber(i)==2)
        for k=1:cls2
           if (ClusterTwoData(k,j)~=0 && Pearsonsim2(k,1)>0 )
              sum1=sum1+(Pearsonsim2(k,1)*(ClusterTwoData(k,j)-Train2AvePerUser(k,1))); 
              sum2=sum2+Pearsonsim2(k,1);
           end
       end
       avg(i,j)=TestAvePerUser(i,1)+(sum1/sum2); 
       end
              if(ClusterNumber(i)==3)
        for k=1:cls3
           if (ClusterThreeData(k,j)~=0 && Pearsonsim3(k,1)>0 )
              sum1=sum1+(Pearsonsim3(k,1)*(ClusterThreeData(k,j)-Train3AvePerUser(k,1))); 
              sum2=sum2+Pearsonsim3(k,1);
           end
       end
       avg(i,j)=TestAvePerUser(i,1)+(sum1/sum2); 
              end
           
   end
end
avgRound=round(avg);
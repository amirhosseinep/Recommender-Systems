RateCount1=zeros(cls1,1);
sum1=zeros(cls1,1);
RateCount2=zeros(cls2,1);
sum2=zeros(cls2,1);
RateCount3=zeros(cls3,1);
sum3=zeros(cls3,1);
for i=1:cls1
   for j=1:1682
      if ClusterOneData(i,j)~= 0
          sum1(i,1)=sum1(i,1)+ClusterOneData(i,j);
          RateCount1(i,1)=RateCount1(i,1)+1;
      end 
   end
   Train1AvePerUser(i,1)=round(sum1(i,1)/RateCount1(i,1));
end
for i=1:cls2
   for j=1:1682
      if ClusterTwoData(i,j)~= 0
          sum2(i,1)=sum2(i,1)+ClusterTwoData(i,j);
          RateCount2(i,1)=RateCount2(i,1)+1;
      end 
   end
   Train2AvePerUser(i,1)=round(sum2(i,1)/RateCount2(i,1));
  
end
for i=1:cls3
   for j=1:1682
      if ClusterThreeData(i,j)~= 0
          sum3(i,1)=sum3(i,1)+ClusterThreeData(i,j);
          RateCount3(i,1)=RateCount3(i,1)+1;
      end 
   end
   Train3AvePerUser(i,1)=round(sum3(i,1)/RateCount3(i,1));
end
%% Test
RateCount=zeros(189,1);
sum=zeros(189,1);
for i=1:189
   for j=1:1682
      if datatest(i,j)~= 0
          sum(i,1)=sum(i,1)+datatest(i,j);
          RateCount(i,1)=RateCount(i,1)+1;
      end 
   end
   TestAvePerUser(i,1)=round(sum(i,1)/RateCount(i,1));
end
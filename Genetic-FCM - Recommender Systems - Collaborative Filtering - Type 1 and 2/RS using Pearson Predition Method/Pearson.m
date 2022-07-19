for i=1:cls1
    for j=1:1682
            ClusterOneData(i,j)=datatrain(ClusterOne(i,1),j);
        end
    end
for i=1:cls2
    for j=1:1682
            ClusterTwoData(i,j)=datatrain(ClusterTwo(i,1),j);
        end
    end
for i=1:cls3
    for j=1:1682
           ClusterThreeData(i,j)=datatrain(ClusterThree(i,1),j);
        end
end
for i=1:189
if(ClusterNumber(i,1) == 1) 
for k=1:cls1
	e=cov(datatest(i,:),ClusterOneData(k,:));
	Pearsonsim1(k,1)=e(2)/(std(datatest(i,:))*std(ClusterOneData(k,:)));
end
end
end
for i=1:189
if(ClusterNumber(i,1) == 2) 
for k=1:cls2
	e=cov(datatest(i,:),ClusterTwoData(k,:));
	Pearsonsim2(k,1)=e(2)/(std(datatest(i,:))*std(ClusterTwoData(k,:)));
end
end
end
for i=1:189
if(ClusterNumber(i,1) == 3) 
for k=1:cls3
	e=cov(datatest(i,:),ClusterThreeData(k,:));
	Pearsonsim3(k,1)=e(2)/(std(datatest(i,:))*std(ClusterThreeData(k,:)));
end
end
end
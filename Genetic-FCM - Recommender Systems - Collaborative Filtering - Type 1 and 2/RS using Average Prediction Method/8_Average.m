
for allrank1 = 1:1682
cl1=1;
r1=1;

for ni1 = 1:cls1
    cl1=ClusterOne(ni1,1);
    Rank(r1,1) = datatrain(cl1,allrank1);
    if ( Rank(r1,1)~=0)
    r1=r1+1;
    end
end
ave1(1,allrank1)=mean(Rank);
ave1(1,allrank1)=round(ave1(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl2=1;
r2=1;

for ni2 = 1:cls2
    cl2=ClusterTwo(ni2,1);
    Rank(r2,1) = datatrain(cl2,allrank1);
    if ( Rank(r2,1)~=0)
    r2=r2+1;
    end
end
ave2(1,allrank1)=mean(Rank);
ave2(1,allrank1)=round(ave2(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl3=1;
r3=1;

for ni3 = 1:cls3
    cl3=ClusterThree(ni3,1);
    Rank(r3,1) = datatrain(cl3,allrank1);
    if ( Rank(r3,1)~=0)
    r3=r3+1;
    end
end
ave3(1,allrank1)=mean(Rank);
ave3(1,allrank1)=round(ave3(1,allrank1));
clear Rank;
end

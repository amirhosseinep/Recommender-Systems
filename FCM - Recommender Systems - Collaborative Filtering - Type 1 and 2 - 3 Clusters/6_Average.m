
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
for allrank1 = 1:1682
cl4=1;
r4=1;

for ni4 = 1:cls4
    cl4=ClusterFour(ni4,1);
    Rank(r4,1) = datatrain(cl4,allrank1);
    if ( Rank(r4,1)~=0)
    r4=r4+1;
    end
end
ave4(1,allrank1)=mean(Rank);
ave4(1,allrank1)=round(ave4(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl5=1;
r5=1;

for ni5 = 1:cls5
    cl5=ClusterFive(ni5,1);
    Rank(r5,1) = datatrain(cl5,allrank1);
    if ( Rank(r5,1)~=0)
    r5=r5+1;
    end
end
ave5(1,allrank1)=mean(Rank);
ave5(1,allrank1)=round(ave5(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl6=1;
r6=1;

for ni6 = 1:cls6
    cl6=ClusterSix(ni6,1);
    Rank(r6,1) = datatrain(cl6,allrank1);
    if ( Rank(r6,1)~=0)
    r6=r6+1;
    end
end
ave6(1,allrank1)=mean(Rank);
ave6(1,allrank1)=round(ave6(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl7=1;
r7=1;

for ni7 = 1:cls7
    cl7=ClusterSeven(ni7,1);
    Rank(r7,1) = datatrain(cl7,allrank1);
    if ( Rank(r7,1)~=0)
    r7=r7+1;
    end
end
ave7(1,allrank1)=mean(Rank);
ave7(1,allrank1)=round(ave7(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl8=1;
r8=1;

for ni8 = 1:cls8
    cl8=ClusterEight(ni8,1);
    Rank(r8,1) = datatrain(cl8,allrank1);
    if ( Rank(r8,1)~=0)
    r8=r8+1;
    end
end
ave8(1,allrank1)=mean(Rank);
ave8(1,allrank1)=round(ave8(1,allrank1));
clear Rank;
end
for allrank1 = 1:1682
cl9=1;
r9=1;

for ni9 = 1:cls9
    cl9=ClusterNine(ni9,1);
    Rank(r9,1) = datatrain(cl9,allrank1);
    if ( Rank(r9,1)~=0)
    r9=r9+1;
    end
end
ave9(1,allrank1)=mean(Rank);
ave9(1,allrank1)=round(ave9(1,allrank1));
clear Rank;
end
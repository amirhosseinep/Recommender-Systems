function [Fc] = Fitness(ChoromozomNumber,datatrain,CenterArray,GN1,GN2,GN3,crossoverChildrenArray,MutationChildArray,IfCross)

if (IfCross == 1)
    Array=crossoverChildrenArray;
elseif (IfCross== 0)
    Array=MutationChildArray;
end
[ClusterNumber,sum1]=distance(datatrain,CenterArray,ChoromozomNumber,GN1,GN2,GN3,MutationChildArray,Array);
Moo1=0;
Moo2=0;
Moo3=0;
for nl=1:754  %nl : hamon k (tedade user haye train).
s1=0;
s2=0;
s3=0;
    if(ClusterNumber(nl,1)==1)
		for j=1:1682
			sum1(GN1,j) =  (datatrain(nl,j)- Array(GN1,j)).^2;
            s1=s1 + sum1(GN1,j);
        end
		%s1=sum(sum1(GN1,:));
		Moo1 = Moo1 + sqrt(s1);
	elseif (ClusterNumber(nl,1)==2)
		for j=1:1682
			sum1(GN2,j) =  (datatrain(nl,j)- Array(GN2,j)).^2;
            s2=s2 + sum1(GN2,j);
        end
		%s1=sum(sum1(GN2,:));
		Moo2 = Moo2 + sqrt(s2);
	elseif (ClusterNumber(nl,1)==3)
		for j=1:1682
			sum1(GN3,j) =  (datatrain(nl,j)- Array(GN3,j)).^2;
            s3=s3 + sum1(GN3,j);
        end
		%s1=sum(sum1(GN3,:));
		Moo3 = Moo3 + sqrt(s3);	
end   
   
Moo(1,1)=Moo1+Moo2+Moo3
Fc(1,1) = 1/ Moo(1,1);

end

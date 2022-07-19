function [ClusterNumber,sum1] = distance(datatrain,CenterArray,ChoromozomNumber,GN1,GN2,GN3,MutationChildArray,Array)

            for k=1:754
				for j=1:1682
					sum1(GN1,j) =  (datatrain(k,j)- Array(GN1,j)).^2;
                    sum1(GN2,j) =  (datatrain(k,j)- Array(GN2,j)).^2;
                    sum1(GN3,j) =  (datatrain(k,j)- Array(GN3,j)).^2;
                end
     s1=0;
     s2=0;
     s3=0;
                for j=1:1682
                    s1=s1+sum1(GN1,j);
                    s2=s2+sum1(GN2,j);
                    s3=s3+sum1(GN3,j);
                end
                sum2(k,1) = sqrt(s1);
 
                sum2(k,2) = sqrt(s2);

                sum2(k,3) = sqrt(s3);
            end 
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CounterOne=0;
CounterTwo=0;
CounterThree=0;

[m n] =size(sum2)
for nl=1:m
    min_sum2(nl) = min(sum2(nl,:));
    if min_sum2(1,nl)==sum2(nl,1)
			ClusterNumber(nl,1)=1;
			CounterOne=CounterOne+1;
    elseif min_sum2(1,nl)==sum2(nl,2)
			ClusterNumber(nl,1)=2; 
			CounterTwo=CounterTwo+1;
        elseif min_sum2(1,nl)==sum2(nl,3)
			ClusterNumber(nl,1)=3;
			CounterThree=CounterThree+1;
            end
end

%end minimum
           
end
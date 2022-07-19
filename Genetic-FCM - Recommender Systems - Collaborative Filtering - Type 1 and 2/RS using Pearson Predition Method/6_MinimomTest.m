[m n] =size(sum22)
clear ClusterNumber;
for nl=1:m

    min_sum22(nl) = min(sum22(nl,:));
    if min_sum22(1,nl)==sum22(nl,1)
			ClusterNumber(nl,1)=1;
    elseif min_sum22(1,nl)==sum22(nl,2)
			ClusterNumber(nl,1)=2; 
            elseif min_sum22(1,nl)==sum22(nl,3)
			ClusterNumber(nl,1)=3;
             
         
    end
end
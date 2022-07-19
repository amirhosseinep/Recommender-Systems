[m n] =size(sum2);
for nl=1:m

    min_sum2(nl) = min(sum2(nl,:));
    if min_sum2(1,nl)==sum2(nl,1)
			IDXtrain(nl,1)=1;
    elseif min_sum2(1,nl)==sum2(nl,2)
			IDXtrain(nl,1)=2; 
            elseif min_sum2(1,nl)==sum2(nl,3)
			IDXtrain(nl,1)=3; 
          
         
    end
end
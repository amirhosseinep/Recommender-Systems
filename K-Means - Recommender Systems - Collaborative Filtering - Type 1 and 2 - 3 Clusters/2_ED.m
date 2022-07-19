for i=1:3
   for k=1:189
    for j=1:1682
     sum1(i,j) =  (datatest(k,j)-trainkmeans(i,j)).^2;
    end	    
		s=sum(sum1(i,:));
     sum2(k,i) = sqrt(s);
   end
    
end
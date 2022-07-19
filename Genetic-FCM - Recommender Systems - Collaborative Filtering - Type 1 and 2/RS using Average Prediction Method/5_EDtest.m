clear sum1;
for i=1:3
   for k=1:189
    for j=1:1682
     sum1(i,j) =  (datatest(k,j)-trainkmeans(i,j)).^2;
    end	    
	
    
s1=0;
for j=1:1682
    s1=s1+sum1(i,j);
    
end
     sum22(k,i) = sqrt(s1);

   end
    
end
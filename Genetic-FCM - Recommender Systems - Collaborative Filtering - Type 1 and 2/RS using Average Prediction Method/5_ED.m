trainkmeans=globalPopArray(1:3,1:end);
clear sum1;
clear sum2;
for i=1:3
   for k=1:754
    for j=1:1682
     sum1(i,j) =  (datatrain(k,j)-trainkmeans(i,j)).^2;
    end
    
s1=0;
for j=1:1682
    s1=s1+sum1(i,j);
    
end
     sum2(k,i) = sqrt(s1);

   end
    
end
for i=1:3
    for j=1:1682
        if globalPopArray(i,j)==0 
            globalPopArray(i,j)=1;
        else if globalPopArray(i,j)==1 
                globalPopArray(i,j)=2;
            else if  globalPopArray(i,j)==2 
                    globalPopArray(i,j)=3;
                    else if  globalPopArray(i,j)==3 
                            globalPopArray(i,j)=4; 
                         
            
                        end
                end
            end
           end
    end
end
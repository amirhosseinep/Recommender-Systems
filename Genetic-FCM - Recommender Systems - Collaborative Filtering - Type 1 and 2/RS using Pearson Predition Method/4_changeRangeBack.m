for i=1:3
    for j=1:1682
        if globalPopArray(i,j)==1 
            MainCenter(i,j)=0;
        else if globalPopArray(i,j)==2 
                MainCenter(i,j)=1;
            else if  globalPopArray(i,j)==3 
                    MainCenter(i,j)=2;
                    else if  globalPopArray(i,j)==4 
                            MainCenter(i,j)=3; 
                            
                        end
                end
            end
           end
    end
end
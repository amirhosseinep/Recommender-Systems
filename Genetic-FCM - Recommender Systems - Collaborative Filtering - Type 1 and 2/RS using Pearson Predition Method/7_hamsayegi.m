cls1=1;
cls2=1;
cls3=1;
% maximum=max(U);
% [IDXtrain,y]=find (U==maximum);

for TRCLS = 1:754
    if (IDXtrain(TRCLS,1)==1)
       
        ClusterOne(cls1,1)=TRCLS;
        cls1=cls1+1;
    
    elseif (IDXtrain(TRCLS,1)==2)
          
            ClusterTwo(cls2,1)=TRCLS ; 
            cls2=cls2+1;
            
        elseif (IDXtrain(TRCLS,1)==3)

            ClusterThree(cls3,1)=TRCLS;   
            cls3=cls3+1;
    

    end 
    
end
cls1=cls1-1;
cls2=cls2-1;
cls3=cls3-1;
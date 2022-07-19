cls1=1;
cls2=1;
cls3=1;
cls4=1;
cls5=1;
cls6=1;
cls7=1;
for TRCLS = 1:754
    if (IDXtrain(TRCLS,1)==1)
       
        ClusterOne(cls1,1)=TRCLS;
        cls1=cls1+1;
    
    elseif (IDXtrain(TRCLS,1)==2)
          
            ClusterTwo(cls2,1)=TRCLS  
            cls2=cls2+1;
            
        elseif (IDXtrain(TRCLS,1)==3)

            ClusterThree(cls3,1)=TRCLS;   
            cls3=cls3+1;
        elseif (IDXtrain(TRCLS,1)==4)

            ClusterFour(cls4,1)=TRCLS;   
            cls4=cls4+1;
			        elseif (IDXtrain(TRCLS,1)==5)

            ClusterFive(cls5,1)=TRCLS;   
            cls5=cls5+1;
			        elseif (IDXtrain(TRCLS,1)==6)

            ClusterSix(cls6,1)=TRCLS;   
            cls6=cls6+1;
			        elseif (IDXtrain(TRCLS,1)==7)

            ClusterSeven(cls5,1)=TRCLS;   
            cls7=cls7+1;
    end 
    
end
cls1=cls1-1;
cls2=cls2-1;
cls3=cls3-1;
cls4=cls4-1;
cls5=cls5-1;
cls6=cls6-1;
cls7=cls7-1;
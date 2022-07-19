TN=0;
TP=0;
FN=0;
FP=0;
for i= 1:189
for testandave = 1:1682
   if(ClusterNumber(i,1)==1)
    if(datatest(i,testandave) > 3 && ave1 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave1 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave1 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave1 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
    end
   elseif(ClusterNumber(i,1)==2)
    if(datatest(i,testandave) > 3 && ave2 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave2 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave2 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave2 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
    end
       elseif(ClusterNumber(i,1)==3)
    if(datatest(i,testandave) > 3 && ave3 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave3 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave3 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave3 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
						    end
       elseif(ClusterNumber(i,1)==4)
    if(datatest(i,testandave) > 3 && ave4 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave4 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave4 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave4 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
						    end
       elseif(ClusterNumber(i,1)==5)
    if(datatest(i,testandave) > 3 && ave5 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave5 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave5 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave5 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
												    end
       elseif(ClusterNumber(i,1)==6)
    if(datatest(i,testandave) > 3 && ave6 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave6 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave6 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave6 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
						    end
       elseif(ClusterNumber(i,1)==7)
    if(datatest(i,testandave) > 3 && ave7 (1,testandave)>3 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 3 && ave7 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 3 && ave7 (1,testandave)<=3 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 3 && ave7 (1,testandave)>3 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
    end
   end
end
end
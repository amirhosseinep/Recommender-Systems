TN=0;
TP=0;
FN=0;
FP=0;
for i= 1:189
for testandave = 1:1682

    if(datatest(i,testandave) > 4 && avgRound (i,testandave)>4 && datatest(i,testandave) ~= 0)
            TP=TP+1;
    elseif (datatest(i,testandave) <= 4 && avgRound (i,testandave)<=4 && datatest(i,testandave) ~= 0)
                TN=TN+1;
            elseif (datatest(i,testandave) > 4 && avgRound (i,testandave)<=4 && datatest(i,testandave) ~= 0)
                FN=FN+1;
                    elseif (datatest(i,testandave) <= 4 && avgRound (i,testandave)>4 && datatest(i,testandave) ~= 0)
                        FP=FP+1;
    end
   
end
end
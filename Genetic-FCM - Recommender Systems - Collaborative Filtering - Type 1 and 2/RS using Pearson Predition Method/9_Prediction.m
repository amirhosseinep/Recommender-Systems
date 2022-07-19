for a=1:189
	Soorat=0;
	makhraj=0;
	for films=1:1682
	if(ClusterNumber(a)==1)
	for c1number=1:cls1
		
		CO=ClusterOne(c1number,1);
		for b=1:cls1
			if (Pearsonsim1(b,1)~=0)
                R=datatrain(CO,films) - ClusterOne(c1number,1);
				Soorat = Soorat + Pearsonsim1(b,1) * R;
				makhraj = makhraj + Pearsonsim1(b,1);
			
            end
		pridict(a,films) = datatest(a,1) + (Soorat/makhraj);
        end
end
    end
if(ClusterNumber(a)==2)
for c2number=1:cls2
		
		CT=ClusterTwo(c2number,1);
		for c=1:cls2
			if (Pearsonsim2(c,1)~=0)
                R=datatrain(CT,films) - ClusterTwo(c2number,1);
				Soorat = Soorat + Pearsonsim2(c,1) * R;
				makhraj = makhraj + Pearsonsim2(c,1);
			
            end
		pridict(a,films) = datatest(a,1) + (Soorat/makhraj);
        end
end
    end
if(ClusterNumber(a)==3)
for c3number=1:cls3
		
		CTH=ClusterThree(c3number,1);
		for d=1:cls3
			if (Pearsonsim3(d,1)~=0)
                R=datatrain(CTH,films) - ClusterThree(c3number,1);
				Soorat = Soorat + Pearsonsim3(d,1) * R;
				makhraj = makhraj + Pearsonsim3(d,1);
			
            end
		pridict(a,films) = datatest(a,1) + (Soorat/makhraj);
        end
end
end
    if(ClusterNumber(a)==4)
for c4number=1:cls4
		
		CF=ClusterFour(c4number,1);
		for d=1:cls4
			if (Pearsonsim4(d,1)~=0)
                R=datatrain(CF,films) - ClusterFour(c4number,1);
				Soorat = Soorat + Pearsonsim4(d,1) * R;
				makhraj = makhraj + Pearsonsim4(d,1);
			
            end
		pridict(a,films) = datatest(a,1) + (Soorat/makhraj);
        end
end
    end
if(ClusterNumber(a)==5)
for c5number=1:cls5
		
		CFI=ClusterFive(c5number,1);
		for d=1:cls5
			if (Pearsonsim5(d,1)~=0)
                R=datatrain(CFI,films) - ClusterFive(c5number,1);
				Soorat = Soorat + Pearsonsim5(d,1) * R;
				makhraj = makhraj + Pearsonsim5(d,1);
			
            end
		pridict(a,films) = datatest(a,1) + (Soorat/makhraj);
        end
end
    end

    end
end
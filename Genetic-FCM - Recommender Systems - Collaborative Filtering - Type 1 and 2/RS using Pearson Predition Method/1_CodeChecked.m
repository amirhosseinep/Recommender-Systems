clc,clear;
load('b.mat');
datatrain=B(1:754,:);
datatest=B(755:943,:);


%parameters Setting

nVar=3;				%Number of Genes of each Choromozom
PopulationSize=100;
SelectionSize=75;
MaxIteration=150;

pc=0.8;			  %Crossover rate
nCross=2*round(pc*PopulationSize/2);   %Number of Offsprings 

pm=0.0001;  		  %Mutation rate
nMutation=round(pm*PopulationSize); %Number of Mutants (tedade koromozomhayi ke beheshon jahesh emaal mishe)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Start of iteration
for iteration=1:MaxIteration
GN1=1;
GN2=2;
GN3=3;

for ChoromozomNumber=1:PopulationSize
%Start of initial Population
    RandomNumber1=0;
    RandomNumber2=0;
    RandomNumber3=0;
    %Adaade random mosavi nabashan.
    while RandomNumber1==RandomNumber2 || RandomNumber1==RandomNumber3 || RandomNumber2==RandomNumber3 
        RandomNumber1 = randi([1 754],1,1);
        RandomNumber2 = randi([1 754],1,1);
        RandomNumber3 = randi([1 754],1,1);
    end

Centers(ChoromozomNumber,1) = RandomNumber1;
Centers(ChoromozomNumber,2) = RandomNumber2;
Centers(ChoromozomNumber,3) = RandomNumber3;
                    for j=1:1682
                       CenterArray(GN1,j)=datatrain(RandomNumber1,j);
                       CenterArray(GN2,j)=datatrain(RandomNumber2,j);
                       CenterArray(GN3,j)=datatrain(RandomNumber3,j);
                    end
% End of Initial Population

% Start of E Distance
	        for k=1:754

				for j=1:1682
					sum1(GN1,j) =  (datatrain(k,j)- CenterArray(GN1,j)).^2;
                    sum1(GN2,j) =  (datatrain(k,j)- CenterArray(GN2,j)).^2;
                    sum1(GN3,j) =  (datatrain(k,j)- CenterArray(GN3,j)).^2;
                    
                end                 
s1=0;
s2=0;
s3=0;
for j=1:1682
    s1=s1+sum1(GN1,j);
    s2=s2+sum1(GN2,j);
    s3=s3+sum1(GN3,j);
end
     sum2(k,1) = sqrt(s1);
     sum2(k,2) = sqrt(s2);
     sum2(k,3) = sqrt(s3);
          
            end     

%End of E Distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Start of Minimum
CounterOne=0;
CounterTwo=0;
CounterThree=0;

[m n] =size(sum2);
for nl=1:m
    min_sum2(nl) = min(sum2(nl,:));
    if min_sum2(1,nl)==sum2(nl,1)
			ClusterNumber(nl,1)=1;
			CounterOne=CounterOne+1;
    elseif min_sum2(1,nl)==sum2(nl,2)
			ClusterNumber(nl,1)=2; 
			CounterTwo=CounterTwo+1;
        elseif min_sum2(1,nl)==sum2(nl,3)
			ClusterNumber(nl,1)=3;
			CounterThree=CounterThree+1;
    end
end

%End of minimum

%Start of Replacing new centers	
			
		for film=1:1682
			sum=0;  
			for trainNumber=1:754
				if(ClusterNumber(trainNumber,1)==GN1)
					sum = datatrain(trainNumber,film) + sum;
                end
            end
			
			sum = CenterArray(GN1,film) + sum;
			  CenterArray(GN1,film) = sum/(CounterOne+1);
		end   
         			

            for film=1:1682
            	sum=0;	
			for trainNumber=1:754
				if(ClusterNumber(trainNumber,1)==GN2)
					sum = datatrain(trainNumber,film) + sum;
                end
            end
            
				sum = CenterArray(GN2,film) + sum;
				CenterArray(GN2,film) = sum/(CounterTwo+1);  
            end

            	for film=1:1682
					sum=0;
			for trainNumber=1:754
				if(ClusterNumber(trainNumber,1)==GN3)
					sum = datatrain(trainNumber,film) + sum;
                end
            end
                
				sum = CenterArray(GN3,film) + sum;
				CenterArray(GN3,film) = sum/(CounterThree+1); 
                end
%End of Replacing New Centers

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%dige minimum lazem nist chon ma minimum ro qablan bedast avordim o ba taqire kochik dar center ha cluster bandi taqir nemikonad.

%Start of Fitness

Moo1=0;
Moo2=0;
Moo3=0;
for nl=1:754  %nl : hamon (tedade user haye train).
s1=0;
s2=0;
s3=0;
    if(ClusterNumber(nl,1)==1)
		for j=1:1682
			sum1(GN1,j) =  (datatrain(nl,j)- CenterArray(GN1,j)).^2;
            s1=s1 + sum1(GN1,j);
        end
		Moo1 = Moo1 + sqrt(s1);
	elseif (ClusterNumber(nl,1)==2)
		for j=1:1682
			sum1(GN2,j) =  (datatrain(nl,j)- CenterArray(GN2,j)).^2;
            s2=s2 + sum1(GN2,j);
        end
		Moo2 = Moo2 + sqrt(s2);
	elseif (ClusterNumber(nl,1)==3)
		for j=1:1682
			sum1(GN3,j) =  (datatrain(nl,j)- CenterArray(GN3,j)).^2;
            s3=s3 + sum1(GN3,j);
        end
		Moo3 = Moo3 + sqrt(s3);	
end   
end
Moo(ChoromozomNumber,1)=Moo1+Moo2+Moo3;
F(ChoromozomNumber,1) = 1/ Moo(ChoromozomNumber,1);
F(ChoromozomNumber,2) = ChoromozomNumber;

%End of Fitness

GN1=GN1+3;
GN2=GN2+3;
GN3=GN3+3;
end 
%End of Population
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Start of Selection
FFrows=size(F,1); %Number of Fitness's Rows
for i=1:FFrows
    F(i,2)=i;
end
%Bubble Sort
for i=1:FFrows
    j=1;
    exchange=0;
    while j<FFrows
        if F(j,1)> F(j+1,1)
            temp=F(j,:);
            F(j,:)=F(j+1,:);
            F(j+1,:)=temp;
            exchange=exchange+1;
        end
        j=j+1;
    end
    if exchange==0
       break; 
    end
end
%end of Bubble Sort

SortIndexS=F(:,2); 
CentersSelection=Centers(SortIndexS,:);

GN1=1;
GN2=2;
GN3=3;
Crows=size(CentersSelection,1);
for i=1:Crows  %CenterArray bar asase Centerhaye sort shode bedast miad.
    for j=1:1682
                       CenterArraySelection(GN1,j)=datatrain(CentersSelection(Crows,1),j);
                       CenterArraySelection(GN2,j)=datatrain(CentersSelection(Crows,2),j);
                       CenterArraySelection(GN3,j)=datatrain(CentersSelection(Crows,3),j);
    end
GN1=GN1+3;
GN2=GN2+3;
GN3=GN3+3;
end
SelectionCenters=CentersSelection(1:SelectionSize,:);
SelectionCentersArray=CenterArraySelection(1:3*SelectionSize,:);
SelectionFitness=F(1:SelectionSize,:);

%end of Selection

GNC1=1;
GNC2=2;
GNC3=3;
Roulett=1;
%Roulett Wheel for Crossover
     for i=1:PopulationSize
         for j=1:2
             Roulett(i,j)=F(i,j);
         end
     end
     
   sum=0;
        for s=1:PopulationSize
            sum=sum+Roulett(s,1);
        end
    for i=1:PopulationSize
        
        Roulett(i,1) = Roulett(i,1)/sum; %normalize sazi (har deraaye taghsim bar majmoeshon)
    end
    
        Roulett = cumsum(Roulett); %faravani tajamoE tamame sotonha
        for i=1:PopulationSize
             Roulett(i,2)= 0;%%F(i,2); %sotone dovom be halate avaliash barmigarde.
         end
    
 for n=1:2:nCross 	%2ta 2ta entekhab kon ta be nCross beresi   
    Ch1=find(rand <= Roulett,1,'first');
    Ch2=find(rand <= Roulett,1,'first');  

%end Roulett Wheel

%Crossover
CGenes1 = Centers(Ch1,1:end);
CGenes2 = Centers(Ch2,1:end);
j=randi([1 nVar-1]); % khate boreshe cross over ro besorate random bedast miare.
NewCh1= [CGenes1(1:j) CGenes2(j+1:end)];
NewCh2= [CGenes2(1:j) CGenes1(j+1:end)];

crossoverChildren(n,:)=NewCh1;
crossoverChildren(n+1,:)=NewCh2;

 for j=1:1682
         crossoverChildrenArray(GNC1,j)=datatrain(crossoverChildren(n,1),j);
         crossoverChildrenArray(GNC2,j)=datatrain(crossoverChildren(n,2),j);
         crossoverChildrenArray(GNC3,j)=datatrain(crossoverChildren(n,3),j);
 end
 MutationChildArray=0;
 [Fc]=Fitness(ChoromozomNumber,datatrain,CenterArray,GNC1,GNC2,GNC3,crossoverChildrenArray,MutationChildArray,1);
 Fcross(n,1)= Fc(1,1);
 Fcross(n,2) = n; %vase inke age sort kardim bar asase F, shomareye oon chromozom ro az dast nadim.
 
 GNC1=GNC1+3;
 GNC2=GNC2+3;
 GNC3=GNC3 + 3;
 for j=1:1682      
         
         crossoverChildrenArray(GNC1,j)=datatrain(crossoverChildren(n+1,1),j);
         crossoverChildrenArray(GNC2,j)=datatrain(crossoverChildren(n+1,2),j);
         crossoverChildrenArray(GNC3,j)=datatrain(crossoverChildren(n+1,3),j);
    end
    [Fc]=Fitness(ChoromozomNumber,datatrain,CenterArray,GNC1,GNC2,GNC3,crossoverChildrenArray,MutationChildArray,1);
    Fcross(n+1,:)=Fc(1,1);
    Fcross(n+1,2) = n+1; %vase inke age sort kardim bar asase F, shomareye oon chromozom ro az dast nadim.

         GNC1=GNC1+3;
         GNC2=GNC2+3;
         GNC3=GNC3 + 3;
 end
 
% %end of Crossover
GNM1=1;
GNM2=2;
GNM3=3;
%Mutation
clear p;
for n=1:nMutation

	i=randi([1 PopulationSize]);
    i
    
	p(n,:) = Centers(i,1:end);

gene1=randi ([1 nVar-1]);
gene2=randi ([gene1+1 nVar]);

%taqire jaye gene 1 o 2:
gene1Value= p(gene1);
gene2Value= p(gene2);
p(gene1)=gene2Value;
p(gene2)=gene1Value;

MutationChild(n,:)=p(1,:);
for j=1:1682
    MutationChildArray(GNM1,j)=datatrain(MutationChild(n,1),j);
    MutationChildArray(GNM2,j)=datatrain(MutationChild(n,2),j);
    MutationChildArray(GNM3,j)=datatrain(MutationChild(n,3),j);
end

 [Fm]=Fitness(ChoromozomNumber,datatrain,CenterArray,GNM1,GNM2,GNM3,crossoverChildrenArray,MutationChildArray,0);
  
 FMutation(n,1)=Fm(1,1); 
 FMutation(n,2)=n;

GNM1=GNM1+3;
GNM2=GNM2+3;
GNM3=GNM3+3;
end
%end of Mutation

SelectionCenters=CentersSelection(1:SelectionSize,:);
SelectionCentersArray=CenterArraySelection(1:3*SelectionSize,:);
SelectionFitness=F(1:SelectionSize,:);
exist MutationChild
if (ans)
[AllCenters]=[SelectionCenters;crossoverChildren;MutationChild];
[AllCentersArray]= [SelectionCentersArray;crossoverChildrenArray;MutationChildArray];
[AllFitness]= [SelectionFitness;Fcross;FMutation];
else
[AllCenters]=[SelectionCenters;crossoverChildren];
[AllCentersArray]= [SelectionCentersArray;crossoverChildrenArray];
[AllFitness]= [SelectionFitness;Fcross];
end
Frows=size(AllFitness,1); %tedade satrhaye allfitness ro mige
for i=1:Frows
    AllFitness(i,2)=i;
end

%Bubble Sort
for i=1:Frows
    j=1;
    exchange=0;
    while j<Frows
        if AllFitness(j,1)> AllFitness(j+1,1)
            temp=AllFitness(j,:);
            AllFitness(j,:)=AllFitness(j+1,:);
            AllFitness(j+1,:)=temp;
            exchange=exchange+1;
        end
        j=j+1;
    end
    if exchange==0
       break; 
    end
end
%end of Bubble Sort

SortIndexes=AllFitness(:,2); 
AllCentersSort=AllCenters(SortIndexes,:);
GN1=1;
GN2=2;
GN3=3;
Crows=size(AllCentersSort,1);
for i=1:Crows  %AllCenterArraySort bar asase Centerhaye sort shode bedast miad.
    for j=1:1682
                       AllCenterArraySort(GN1,j)=datatrain(AllCentersSort(Crows,1),j);
                       AllCenterArraySort(GN2,j)=datatrain(AllCentersSort(Crows,2),j);
                       AllCenterArraySort(GN3,j)=datatrain(AllCentersSort(Crows,3),j);
    end
GN1=GN1+3;
GN2=GN2+3;
GN3=GN3+3;
end

Centers=AllCentersSort(1:PopulationSize,:);
p=PopulationSize*3;
CenterArray=AllCenterArraySort(1:p,:);
globalPop=Centers(1,:);  %behtarin javab
globalPopArray=CenterArray(1:3,:);
globalPopFitness=AllFitness(1,:);

BEST(iteration)=globalPopFitness(1,1);
disp(['Iteration =' num2str(iteration) 'Best = ' num2str(BEST(iteration))]);
end

globalPop
globalPopArray;
globalPopFitness;

figure(1)
plot(BEST,'r')
xlabel('iteration')
ylabel('Fitness')
legend('BEST')
title('K-means')

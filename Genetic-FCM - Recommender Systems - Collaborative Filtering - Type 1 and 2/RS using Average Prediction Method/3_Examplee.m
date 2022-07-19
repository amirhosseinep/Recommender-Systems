
clc;
clear;
%data = rand(100,2);
load('b.mat');
load('AfterGA3-0-0001PopulationChange.mat');
datatrain=B(1:754,:);
datatest=B(755:943,:);
default_options = [;	% exponent for the partition matrix U
		500;	% max. number of iteration
		1e-1;	% min. amount of improvement
		1];	% info display during iteration 
changeRange;
     [center,U,obj_fcn] = fcmCustom(datatrain,3,default_options,globalPopArray);
      plot(datatrain(:,1), datatrain(:,2),'o');
      hold on;
      
    %%  
%       maxU = max(U);
%       % Find the data points with highest grade of membership in cluster 1
%       index1 = find(U(1,:) == maxU);
%       indexTrain=find(U(:,:)==maxU);
%       % Find the data points with highest grade of membership in cluster 2
%       index2 = find(U(2,:) == maxU);
%       index3 = find(U(3,:) == maxU);
%       line(datatrain(index1,1),datatrain(index1,2),'marker','*','color','g');
%       line(datatrain(index2,1),datatrain(index2,2),'marker','*','color','r');
%       line(datatrain(index3,1),datatrain(index3,1),'marker','*','color','b');
%       % Plot the cluster centers
%       plot([center([1 2],1)],[center([1 2],3)],'*','color','k')
%       hold off;
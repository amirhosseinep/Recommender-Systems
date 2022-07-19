load('matlab.mat');
datatrain=B(1:754,:);
datatest=B(755:943,:);
tic;
[IDXtrain,trainkmeans] = kmeans(datatrain,3);
toc;
%%%%%%%%%%%%%%%%  SOM Clustering %%%%%%%%%%%%%%%%
dim_1=4;
dim_2=4;
idxtrain=zeros(754,3);
trainkmeans=zeros(dim_1 * dim_2,1682,3);
net=selforgmap([dim_1 dim_2]);
  input_som=datatrain(:,:)';
  [net,tr]=train(net,input_som);
  output=net(input_som);
  %view(net)
  idxtrain(:,3)=vec2ind(output);%define Cluster of each user
  trainkmeans(:,:)=net.iw{1,1};%define Cluster of each user
%%%%%%%%%%%%%%  End of SOM Clustering  %%%%%%%%%%%%%%%%%


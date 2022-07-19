n_clusters = 3; % number of clusters
[trainkmeans,V,obj_fcn] = fcm(datatrain, n_clusters);

U=V';

[m n] =size(U)
for nl=1:m

    min_U(nl) = min(U(nl,:))
    if min_U(1,nl)==U(nl,1)
			idxtrain(nl,1)=1;
    elseif min_U(1,nl)==U(nl,2)
			idxtrain(nl,1)=2; 
            elseif min_U(1,nl)==U(nl,3)
			idxtrain(nl,1)=3;
         
    end
end


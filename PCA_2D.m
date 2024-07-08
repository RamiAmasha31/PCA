function PCA_2D()


%%% generate data
w=randn(1000,2);
A=rand(2,2);
X=w*A;

%%% computing the covariance matrix
CovMtx=cov(X);

%%% computing the eigenvalues and the eigenvectors
[EigveVec ,Eigvalues]=eig(CovMtx);
d=diag(Eigvalues);
[dmax,dmax_ind ] = max(d); %% find the index of the maximum eigenvalue
u=EigveVec(:,dmax_ind); %%% u is the coressponding eigenvector to the maximum eigenvalue

%% transform data
z=X*u; %%% find the first principal component

%% decode data
Y=z*u'; %%% the projected values of the original data

%% PLOT RESULTS
figure;
scatter(X(:,1),X(:,2));
hold on;
scatter(Y(:,1),Y(:,2));
end


function [X_normalized mu sigma] = featureNormalize(X)

X_normalized=X;

mu = zeros(1, size(X, 2)); %To calculate mean
sigma = zeros(1, size(X, 2)); %To calculate standard deviation

mu=mean(X);
sigma=std(X);
X_normalized=((X-mu)./sigma); %Implementing normalization with the help of z-score


endfunction;

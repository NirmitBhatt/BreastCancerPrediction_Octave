%Logistic Regression model to classify whether the breast cancewr is malignant or benign
clear;
clc;
%Loading the dataset into the program
data=load('breast_cancer_data.txt');

%Loading the features and result in X and y respectively 
X_prime=data(:,[1:5]);
y_prime=data(:,6);

plotData(X_prime, y_prime);

m=length(y_prime);

fprintf('Applying feature normalization...\n');
[X_prime mu sigma] = featureNormalize(X_prime);
fprintf('The features have been successfully normalized!\n\n');

X_prime=[ones(m,1) X_prime];

X=X_prime(1:450,:);
y=y_prime(1:450,:);

fprintf('Initial Value of theta:\n');
initial_theta=2*ones(size(X,2),1);
fprintf('%0.3f\n\n',initial_theta);

fprintf('Calculating the cost...\n');
J=computeCost(X, y, initial_theta);
fprintf('Cost with initial theta: %0.3f\n\n',J);

alpha=0.1;
total_iterations=5000;



[J_history, theta,i] = gradDescent(X, y, initial_theta, alpha, total_iterations);
fprintf('Calculating gradient...\n');
fprintf('New Cost: %0.3f\n',J_history(length(J_history)));
fprintf('Gradient Descent was successful!\n');
fprintf('Optimized theta: %0.3f\n',theta);
fprintf('\nTotal iterations took to optimize the function with an alpha of %0.4f are: %0.1f\n\n',alpha,i);

tot_iter=[1:1:i];
figure(3);
plot(tot_iter,J_history);
xlabel('Total Iterations');
ylabel('Cost');

X_test=X_prime(451:length(y_prime),:);
y_test=y_prime(451:length(y_prime),:);


fprintf('Testing data...\n');
result=X_test*theta;
score=0;
for j=1:length(result)
if(result(j)>=0.5)
result(j)=1;
else
result(j)=0;
endif
if(result(j)==y_test(j))
score++;
endif
endfor


accuracy=(score/(length(result)))*100;
fprintf('Accuracy achieved: %f\n',accuracy);

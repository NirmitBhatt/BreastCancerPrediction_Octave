function [J_history, theta, i] = gradDescent (X, y, theta, alpha, tot_iter)
  
m=length(y);
lambda=0.2; %Defining the learning rate
J_history = zeros(1, 1);

for i=1:tot_iter

hx=sigmoid(X*theta); %Vectorized implementation of the hypothesis

theta=theta-(alpha*(((1/m)*(X'*(hx-y)))+((lambda/m)*(theta'*theta))));  %Vectorized implementation of logistic regression with regularization

%Stores the cost with every iteration of gradient
J_history(i)=computeCost(X, y, theta);

%Establishing a stop condition
if(i>1 && (J_history(i-1)-J_history(i)<0.001))
break;
endif;
endfor
J_history=J_history';
endfunction

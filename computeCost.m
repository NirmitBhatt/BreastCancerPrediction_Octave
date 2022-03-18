function J = computeCost (X, y, theta)

lambda=0.2; %Defining learning rate for regularization
m=length(y);
%Hypothesis function given by sigmoid
ht=sigmoid(X*theta);

%Computing cost with a regularization term
J=((-1/m)*(((y')*(log(ht)))+((1-(y'))*log(1-ht)))) + ((lambda/2*m)*(theta'*theta));


endfunction

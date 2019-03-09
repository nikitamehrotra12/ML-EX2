function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
m = length(y); % number of training examples
h = X*theta;
g = sigmoid(h);
[J , grad] = costFunction(theta, X, y);
[m1,n]=size(theta);
J = J +(lambda * (sum(theta(2:m1).* theta(2:m1))))/(2*m);
grad = (transpose(X)*(g-y))./m + cat(1,0,((lambda.*(theta(2:m1)))./m));

% grad = grad + cat(1,theta(1),((lambda*(theta(2:m1)))/m));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% =============================================================
end

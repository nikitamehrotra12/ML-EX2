function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
% g = 1/(1+exp(-z));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
[m,n] = size(z);
if(m==1&&n==1)
    g = 1/(1+exp(-z));
elseif(m==1&&n>1)
    g = zeros(1,n);
    for i = 1:n
        g(i) =1/(1+exp(-z(i))); 
    end
elseif(n==1&&m>1)
    g = zeros(m,1);
    for i = 1:m
        g(i) =1/(1+exp(-z(i))); 
    end
else
    g = zeros(m,n);
    for i = 1:m
        for j = 1:n
             g(i,j) =1/(1+exp(-z(i,j))); 
        end
    end   
end
% =============================================================

end

function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
dim_z = size(z);
g = zeros(dim_z);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
if(size(dim_z) == [1 2])
	g = 1./(1 .+ e.^(-z));
else
	g = 1/(1+e^(-z));
% =============================================================

end

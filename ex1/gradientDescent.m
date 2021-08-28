function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
% n = size(X,2);
J_history = zeros(num_iters, 1);

% theta_tmp = zeros(length(theta),1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	theta = theta - alpha / m * X'*(X * theta - y);
	% for i = 1:n
		% s = 0;
		% for j = 1:m
			% s = s + (X(j,:) * theta - y(j,:)) * X(j,i);
		% end
		% theta_tmp(i) = theta(i) - alpha / m * s;

		% theta_tmp(i) = theta(i) - alpha / m * (X * theta - y)' * X(:,i);
	
	% end

	% theta = theta_tmp;

	% printf('Cost = %0.3f \n', computeCost(X, y, theta));
	% disp(theta);
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

% disp(J_history);

end

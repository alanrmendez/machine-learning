function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%Code originally used to determine optimal C and sigma, found to be
%C = 1, sigma = 0.1
%C_vec = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%sigma_vec = C_vec;

%M = zeros(length(C_vec)*length(sigma_vec), 4);
%t = 1;


%for i = 1:length(C_vec)
%     C = C_vec(i);
     
%     for j = 1:length(sigma_vec)
%          sigma = sigma_vec(j);
%	  disp(t)

%          %Train the SVM with these values of C and sigma
%	  model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));

%	  predictions = svmPredict(model, Xval);

%	  error = mean(double(predictions ~= yval));
%	  M(t, :) = [t, C, sigma, error];
%	  t++;
%	  end;
%     end;

%disp(M)

%[error_min, ind] = min(M(:, 4))
%C = M(ind, 2);
%sigma = M(ind, 3);

%from first trial: C = 1, sigma = 0.3
%from second trial: C = 1, sigma = 0.1

%C = 1; 
%sigma = 0.1;


% =========================================================================

end
